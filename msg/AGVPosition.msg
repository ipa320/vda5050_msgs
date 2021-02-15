# Defines the position on a map in world coordinates. Each floor has its own map.

bool positionInitialized      # False: position is not initialized True: position is initialized

float64 localizationScore       # Range: [0.0 … 1.0] Describes the quality of the localization and therefore, can be used 
                              # e. g. by SLAMAGVs to describe how accurate the current position information is. 
                              # 0.0: position unknown 1.0: position known
float64 deviationRange          # Value for the deviation range of the position in meters.
float64 x                     # [m] X-position on the map in reference to the map coordinate system. Precision is up to
                              # the specific implementation

float64 y                     # [m] Y-position on the map in reference to the map coordinate system. Precision is up to
                              # the specific implementation.

float64 theta                 # [rad] Range: [-Pi … Pi] Orientation of the AGV. 

string mapId                  # Unique identification of the map in which the position is referenced. Each map has the 
                              # same origin of coordinates. When an AGV uses an elevator, e. g. leading from a departure
                              # floor to a target floor, it will disappear off the map of the departure floor and spawn
                              # in the related lift node on the map of the target floor.

string mapDescription         # Additional information on the map.
