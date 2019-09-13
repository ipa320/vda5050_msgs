# Defines the position on a map in world coordinates. Each floor has its own map.

float64 x               # [m] X-position on the map in reference to the world coordinate system
float64 y               # [m] Y-position on the map in reference to the world coordinate system

float64 theta           # [rad] The angular dimension

string mapId            # Unique identification of the map in which the position is referenced. Each map has the same 
                        # origin of coordinates. When an AGV uses an elevator, e. g. leading from a departure floor to a
                        # target floor, it will disappear off the map of the departure floor and spawn in the related
                        # lift node on the map of the target floor.

string mapDescription   # Additional information on the map
