import json
import re
import os
import sys
import vda5050_msgs.msg as vda


def dromedary(non_dromedary_string) -> str:
    x = camely(non_dromedary_string)
    return x[0].lower() + x[1:]


def camely(non_camel_string) -> str:
    return "".join(word[0].upper() + word[1:] for word in non_camel_string.split("_"))


def snakey(non_snake_string) -> str:
    pattern = re.compile(r"(?<!^)(?=[A-Z])")
    return pattern.sub("_", non_snake_string).lower()


def convert_type(ros_type: str) -> str:
    if ros_type == "uint32":
        return "integer"
    if ros_type == "double":
        return "number"
    if ros_type.startswith("sequence"):
        return "array"
    if ros_type.startswith("vda5050_msgs"):
        return "object"
    return ros_type


def inferType(schema_type):
    try:
        return getattr(vda, camely(schema_type))
    except AttributeError:
        if schema_type == "information":
            return vda.Info
        raise KeyError(f"Could not infer type for {schema_type}")


def checkSchemaAgainstType(schema, type, global_definitions):
    for field, data_type in type.get_fields_and_field_types().items():
        dromedary_field = dromedary(field)
        field_description = f"'{dromedary_field}' of ROS message '{type.__name__}'"
        if dromedary_field not in schema:
            raise KeyError(f"{field_description} not in schema")
        schema_type = schema[dromedary_field]["type"]
        if isinstance(schema_type, list):
            print(f"Skip type checking for '{field_description}' as it is a variant ")
            continue
        if schema_type != convert_type(data_type):
            raise TypeError(
                f"{field_description} should have type {schema_type} but has type {convert_type(data_type)}"
            )
    for field, data in schema.items():
        if snakey(field) not in type.get_fields_and_field_types():
            raise KeyError(
                f"Field '{snakey(field)}' not in ROS message '{type.__name__}'"
            )
        if data["type"] == "array":
            if "$ref" in data["items"]:
                key = data["items"]["$ref"].split("/")[-1]
                checkSchemaAgainstType(
                    global_definitions[key]["properties"],
                    inferType(key),
                    global_definitions,
                )
            else:
                # if it has a title use title otherwise infer it from field name (removing the plural s)
                type_guess = data["items"].get("title", field.rstrip("s"))
                checkSchemaAgainstType(
                    data["items"]["properties"],
                    inferType(type_guess),
                    global_definitions,
                )
        elif data["type"] == "object":
            for sub_field, sub_data in data["properties"].items():
                if sub_data["type"] == "object":
                    checkSchemaAgainstType(
                        sub_data, inferType(sub_data["type"]), global_definitions
                    )
                elif sub_data["type"] == "array":
                    if sub_data["items"]["type"] == "object":
                        type_guess = sub_data["items"].get(
                            "title", sub_field.rstrip("s")
                        )
                        checkSchemaAgainstType(
                            sub_data["items"]["properties"],
                            inferType(type_guess),
                            global_definitions,
                        )


def checkSchemaFile(schema_file, type):
    with open(schema_file) as f:
        schema = json.load(f)
    checkSchemaAgainstType(schema["properties"], type, schema.get("definitions", {}))


if __name__ == "__main__":
    folder = sys.argv[1]
    for schema_file in os.listdir(folder):
        if schema_file == "factsheet.schema":
            print("Skip Checking Factsheet for now")
            continue
        checkSchemaFile(
            os.path.join(folder, schema_file),
            getattr(vda, camely(os.path.splitext(schema_file)[0])),
        )
