# Directional connection between two nodes

string edgeId                       # Unique edge identification

int32 sequenceId                    # Id to track the sequence of nodes and edges in an order and to simplify order 
                                    # updates. The variable sequenceId runs across all nodes and edges of the same order
                                    # and is reset when a new orderId is issued.

string edgeDescription              # Additional information on the edge

bool released                       # True indicates that the edge is part of the base. False indicates that the edge is
                                    # part of the horizon.

string startNode                    # nodeID of startNode
string endNode                      # nodeID of endNode
float64 maxSpeed                    # Permitted maximum speed on the edge. Speed is defined by the fastest point of the
                                    # vehicle.

float64 maxHeight                   # Permitted maximum height of the vehicle, including the load, on edge
float64 minHeight                   # Permitted minimal height of the edge measured at the bottom of the load
float64 orientation                 # Orientation on the edge (for holonomic vehicles with more than one drive 
                                    # direction. Sample: orientation Pi/2 rad will lead to a rotation of 90 degree.

string direction                    # Sets direction at junctions for line-guided vehicles, to be defined initially 
                                    # (vehicleindividual) Sample: 1: left 2: right, 0: ahead 

bool rotationAllowed                # If this value is set, rotation is allowed on the edge.
float64 maxRotationSpeed            # Maximum rotation speed
vda5050_msgs/Trajectory trajectory  # Trajectory JSON-object for this edge as a NURBS. Defines the curve on which the 
                                    # AGV should move between startNode and endNode. Optional: Can be omitted if AGV 
                                    # cannot process trajectories or if AGV plans its own trajectory.
float64 distance                    # [m] Distance of the path from startNode to endNode. Optional: This value is used 
                                    # by lineguided AGVs to decrease their speed before reaching a stop position.

vda5050_msgs/Action[] actions       # Array of actionIds to be executed on the edge. An action triggered by an edge will
                                    # only be active for the time that the AGV is traversing the edge which triggered
                                    # the action. When the AGV leaves the edge, the action will stop and the state
                                    # before entering the edge will be restored.
