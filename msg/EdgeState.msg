string edgeId                       # Unique edge identification

int32 sequenceId                    # sequenceId to differentiate between multiple edges with

string edgeDescription              # Additional information on the edge

bool released                       # True indicates that the edge is part of the base. False indicates that the edge is
                                    # part of the horizon.
vda5050_msgs/Trajectory trajectory  # The trajectory is to be communicated as a NURBS and is defined in chapter6.4
                                    # Trajectory segments are from the point where the AGV starts to enter the edge
                                    # until the point where it reports that the next node was traversed.
