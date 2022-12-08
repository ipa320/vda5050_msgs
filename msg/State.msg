# state msg
# HEADER
vda5050_msgs/Header header              # header ID of the message. The headerId is defined per topic and incremented by 1 with each sent 
                                        # (but not necessarily received) message.

# CONTENTS
string orderId                          # Unique order identification of the current order or the previous finished order. 
                                        # The orderId is kept until a new order is received. 
                                        # Empty string ("") if no previous orderId is available.
                                        
uint32 orderUpdateId                    # Order Update Identification to identify that an order update has been accepted by the AGV. 
                                        # “0” if no previous orderUpdateId is available.

string zoneSetId                        # Unique ID of the zone set that the AGV currently uses for path planning. 
                                        # Must bethe same as the one used in the order, otherwise the AGV has to reject the order.    
                                        # Optional: If the AGV does not use zones, this field can be omitted.


string lastNodeId                       # nodeId of last reached node or, if AGV is currently on a node, current node (e.g.„node7”). Empty string ("") if no lastNodeId is available.

uint32 lastNodeSequenceId               # sequenceId of the last reached node or, if the AGV is currently on a node, sequenceId of current node.
                                        # “0” if no lastNodeSequenceId is available.
                                        
vda5050_msgs/NodeState[] nodeStates     # Array of nodeState-Objects that need to be traversed for fulfilling the order.

vda5050_msgs/EdgeState[] edgeStates     # Array of edgeState-Objects that need to be traversed for fulfilling the order (empty list if idle).

vda5050_msgs/AGVPosition agvPosition    # Current position of the AGV on the map.
                                        # Optional: Can only be omitted for AGVs without the capability to localize themselves, e.g. line guided AGVs.
                                        
vda5050_msgs/Velocity velocity          # The AGVs velocity in vehicle coordinates.

vda5050_msgs/Load[] loads               # Loads that are currently handled by the AGV.
                                        # Optional: If AGV cannot determine load state, leave the array out of the state. 
                                        # If the AGV can determine the load state, but the array is empty, the AGV is considered unloaded.
                                        
bool driving                            # “true”: indicates that the AGV is driving and/or rotating. 
                                        # Other movements of the AGV (e.g. lift movements) are not included here.
                                        # “false”: indicates that the AGV is neither driving nor rotating.
                                        
bool paused                             # True: AGV is currently in a paused state, either because of the push of a physical button on the AGV or instantAction because of an instantAction. 
                                        # The AGV can resume the order.
                                        # False: The AGV is currently not in a paused state.

bool newBaseRequest                     # “true”: AGV is almost at the end of the base and will reduce speed if no new base is transmitted. 
                                        # Trigger for MC to send a new base.
                                        # “false”: no base request required.

float64 distanceSinceLastNode           # Used by line guided vehicles to indicate the distance it has been driving past the „lastNodeIdId“. 
                                        # Distance is in meters


vda5050_msgs/ActionState[] actionStates # Contains a list of the current actions and the actions which are yet to be finished.
                                        # This may include actions from previous nodes that are still in progress.
                                        # When an action is  completed, an updated state message is published with actionStatus set to finished
                                        # and if applicable with the corresponding resultDescription.
                                        # The action state is kept until a new order is received.

vda5050_msgs/BatteryState batteryState  # Contains all battery-related information.
string operatingMode                    # For additional information, see the table OperatingModes in the chapter 6.10.6.
vda5050_msgs/Error[] errors             # Array of error-objects. All active errors of the AGV should be in the list.
                                        # An empty array indicates that the AGV has no active errors.

vda5050_msgs/Info[] informations        # Array of info-objects. An empty array indicates that the AGV has no information.
                                        # This should only be used for visualization or debugging – it must not be used for logic in master control.

vda5050_msgs/SafetyState safetyState    # Contains all safety-related information.

# Enums for operatingMode
string AUTOMATIC=AUTOMATIC
string SEMIAUTOMATIC=SEMIAUTOMATIC
string MANUAL=MANUAL
string SERVICE=SERVICE
string TEACHIN=TEACHIN

