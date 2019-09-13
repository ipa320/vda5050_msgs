# Array of nodes to be traversed for fulfilling the order

string nodeId                                       # Unique node identification 

string nodeDescription                              # Additional information on the node
vda5050_msgs/NodePosition position                  # Node position (see Topic: Order)
bool released                                       # true indicates that the node is part of the base. 
                                                    # false indicates that the node is part of the horizon.
