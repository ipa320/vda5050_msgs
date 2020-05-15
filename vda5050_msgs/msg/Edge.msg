# Directional connection between two nodes

string edge_id                       # Unique edge identification

int32 sequence_id                    # Id to track the sequence of nodes and edges in an order and to simplify order 
                                    # updates. The variable sequence_id runs across all nodes and edges of the same order
                                    # and is reset when a new order_id is issued.

string edge_description              # Additional information on the edge

bool released                       # True indicates that the edge is part of the base. False indicates that the edge is
                                    # part of the horizon.

string start_node_id                    # node_id of start_node
string end_node_id                      # node_id of end_node
float64 max_speed                    # Permitted maximum speed on the edge. Speed is defined by the fastest point of the
                                    # vehicle.

float64 max_height                   # Permitted maximum height of the vehicle, including the load, on edge
float64 min_height                   # Permitted minimal height of the edge measured at the bottom of the load
float64 orientation                 # Orientation on the edge (for holonomic vehicles with more than one drive 
                                    # direction. Sample: orientation Pi/2 rad will lead to a rotation of 90 degree.

string direction                    # Sets direction at junctions for line-guided vehicles, to be defined initially 
                                    # (vehicleindividual) Sample: 1: left 2: right, 0: ahead 

bool rotation_allowed                # If this value is set, rotation is allowed on the edge.
float64 max_rotation_speed            # Maximum rotation speed
vda5050_msgs/Trajectory trajectory  # Trajectory JSON-object for this edge as a NURBS. Defines the curve on which the 
                                    # AGV should move between start_node and end_node. Optional: Can be omitted if AGV 
                                    # cannot process trajectories or if AGV plans its own trajectory.
float64 distance                    # [m] Distance of the path from start_node to end_node. Optional: This value is used 
                                    # by lineguided AGVs to decrease their speed before reaching a stop position.
				    # TODO: Might also be "length"

vda5050_msgs/Action[] actions       # Array of action_ids to be executed on the edge. An action triggered by an edge will
                                    # only be active for the time that the AGV is traversing the edge which triggered
                                    # the action. When the AGV leaves the edge, the action will stop and the state
                                    # before entering the edge will be restored.
