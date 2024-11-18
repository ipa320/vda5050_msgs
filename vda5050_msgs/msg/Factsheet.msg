# HEADER
uint32 header_id                                                # header ID of the message. The headerId is defined per topic and incremented by 1 with each sent
                                                                # (but not necessarily received) message.

string timestamp                                                # Timestamp after ISO8601 in the format YYYY-MM-DDTHH:mm:ss.ssZ (e.g.“2017-04-15T11:40:03.12Z”)

string version                                                  # Version of the protocol [Major].[Minor].[Patch] (e.g. 1.3.2)

string manufacturer                                             # Manufacturer of the AGV

string serial_number                                            # Serial Number of the AGV

# CONTENTS

vda5050_msgs/TypeSpecification type_specification               # Class and capabilities of the AGV

vda5050_msgs/PhysicalParameters physical_parameters             # Physical properties of the AGV

vda5050_msgs/ProtocolLimits protocol_limits                     # Protocol limitations of the AGV

vda5050_msgs/ProtocolFeatures protocol_features                 # Supported and/or required optional parameters

vda5050_msgs/AGVGeometry agv_geometry                           # Detailed definition of AGV geometry

vda5050_msgs/LoadSpecification load_specification               # Load positions / load handling devices

vda5050_msgs/VehicleConfig vehicle_config                       # Summary of current software and hardware
                                                                # versions on the vehicle and optional network
                                                                # information.
