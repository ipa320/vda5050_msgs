vda5050_msgs/Header header                
string orderId                                      # Unique order identification “none” if vehicle is idle and has no
                                                    # order 
                                                    
string lastNodeId                                   # nodeId of last reached node or current node if agv is on node 
                                                    # (sample: node 7)
                                                    
vda5050_msgs/NodeState[] nodeStates                 # Array of nodeStateObjects (empty list if idle)

vda5050_msgs/EdgeState[] edgeStates                 # Array of edgeStateObjects (empty list if idle)

vda5050_msgs/AGVPosition agvPosition                # Current position of the AGV. Optional: Can only be omitted for
                                                    # AGVs without the capability to localize themselves, e.g. line
                                                    # guided AGVs.

vda5050_msgs/Trajectory Trajectory                  # The trajectory is to be communicated as a NURBS and is defined in
                                                    # chapter 5.1. Optional: AGVs that plan their own path are to
                                                    # communicate their path via a trajectory object.

vda5050_msgs/Load[] loads                           # Loads that are currently handled by the AGV.

bool driving                                        # True: indicates that the AGV is driving and/or rotating. Other
                                                    # movements of the AGV (e.g. lift movements) are not included here.
                                                    # False: indicates that the AGV is neither driving nor rotating

float64 distanceSinceLastNode                       # For line guided vehicles. 
vda5050_msgs/CurrentAction[] currentActions         # Contains a list of the current actions and the actions which are
                                                    # yet to be finished. This may include actions from previous nodes
                                                    # that are still in progress. When an action is completed, an
                                                    # updated state message is published with actionStatus set to
                                                    # finished and if applicable with the corresponding
                                                    # resultDescription. Completed actions are omitted from the array

vda5050_msgs/BatteryInformation batteryInformation  # Contains all batteryrelated information.

string operatingMode                                # Enum {automatic, semi-automatic, manual, service, teach-in}
                                                    # For additional information see chapter 6.2

vda5050_msgs/Error[] errors                         # Array of errorobjects. Empty array if there are no errors.

vda5050_msgs/SafetyStatus safetyStatus              # Contains all safetyrelated information.

vda5050_msgs/NodeState nodeState                    # Array of nodes to be traversed for fulfilling the order
vda5050_msgs/EdgeState edgeState




# Enums for operatingMode
string AUTOMATIC="automatic"                        

# AGV is under full control of the supervisor. AGV drives and executes actions based on orders from the supervisor
string SEMI_AUTOMATIC="semi-automatic"              

# AGV is under control of the supervisor. AGV drives and executes actions based on orders from the supervisor. The driving speeds is controlled by the HMI. (speed can’t exceed the speed of automatic mode) The steering is under automatic control. (non-safe HMI possible)
string MANUAL="manual"                              

# Supervisor is not in control of the AGV. Supervisor doesn’t send driving order or actions to the AGV. HMI can be used the control the steering and velocity and handling device of the AGV. Location of the AGV is send to the supervisor. When AGV enters or leaves this mode, it immediately clears all the orders. (safe HMI required)
# Supervisor is not in control of the AGV. Supervisor doesn’t send driving order or actions to the AGV. Authorized personal can reconfigure the AGV. 
string SERVICE="service"                            

# Supervisor is not in control of the AGV. Supervisor doesn’t send driving order or actions to the AGV. The AGV is being taught, e.g. mapping is done by a supervisor
string TEACH_IN="teach-in"                          
