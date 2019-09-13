# Array of nodes to be traversed for fulfilling the order

string nodeId                                     # Unique node identification. 

int32 sequenceId                                  # Id to track the sequence of nodes and edges in an order and to 
                                                  # simplify order updates. The variable sequenceId runs across all
                                                  # nodes and edges of the same order and is reset when a new orderId is
                                                  # issued.

string nodeDescription                            # Additional information on the node

bool released                                     # True indicates that the node is part of the base. False indicates
                                                  # that the node is part of the horizon.

vda5050_msgs/NodePosition nodePosition                # Node position

float32 allowedDeviation                          # Indicates how exact an AGV has to drive over a node in order for it
                                                  # to count as traversed.
                                                  #
                                                  # If = 0: no deviation is allowed (no deviation means within the
                                                  # normal tolerance of the AGV manufacturer).
                                                  #
                                                  # If > 0: allowed deviationradius in meters. If the AGV passes a node 
                                                  # within the deviation-radius, the node is considered to have been
                                                  # traversed.

vda5050_msgs/Action[] actions                     # Array of actions to be executed in node. Empty array if no actions 
                                                  # required. An action triggered by a node will persist until changed
                                                  # in another node unless restricted by durationType/durationValue. 
