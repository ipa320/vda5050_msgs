string map_id                # ID of the map describing a defined area of the vehicle's workspace.
string map_version           # Version of the map.
string map_description       # Additional information on the map.
string map_status            # Information on the status of the map indicating, if a map version is currently used on the vehicle. ENABLED: Indicates this map is currently active / used on the AGV. At most one map with the same mapId can have its status set to ENABLED.<br>DISABLED: Indicates this map version is currently not enabled on the AGV and thus could be enabled or deleted by request.

# Enums for map status
string ENABLED="ENABLED"
string DISABLED="DISABLED"
