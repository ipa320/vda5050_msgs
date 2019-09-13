vda5050_msgs/Header header
string orderId                              # Unique order identification

string orderUpdateId                        # orderUpdate identification. Is unique per orderId. If an order update is 
                                            # rejected, this field is to be passed in the rejection message

bool replace                                # Indicates that previously released base nodes should be replaced by the 
                                            # base of this updated order. If this is not possible, the AGV returns an 
                                            # error code (see errors in topic “state”). The new base has to start at the 
                                            # following node from the current position which has not been traversed yet.

vda5050_msgs/Node[] nodes                   # Array of nodes to be traversed for fulfilling the order. The nodes come 
                                            # in the sequence of the fulfilling.

vda5050_msgs/Edge[] edges                   # Array of edges to be traversed for fulfilling the order
