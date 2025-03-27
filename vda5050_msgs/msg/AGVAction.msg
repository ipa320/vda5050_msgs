string action_type                                  # Unique actionType corresponding to action.actionType

string action_description                           # 

string[] action_scopes                              # Allowed scopes for using this action-type

vda5050_msgs/ActionParameterDefinition[] action_parameters    # List of parameters defined for the action

string result_description                           # 

string[] blocking_types                             # 

# Enums for action scopes
string INSTANT = "INSTANT"
string NODE = "NODE"
string EDGE = "EDGE"

# Enums for blockingTypes
string NONE = "NONE"
string SOFT = "SOFT"
string HARD = "HARD"