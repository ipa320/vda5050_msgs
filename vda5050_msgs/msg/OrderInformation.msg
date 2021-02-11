# HEADER
int32 header_id                                       # header ID of the message. The header_id is defined per topic and incremented by 1 with each sent
                                                     # (but not necessarily received) message.

string timestamp                                     # Timestamp after ISO8601 in the format YYYY-MM-DDTHH:mm:ss.ssZ (e.g.“2017-04-15T11:40:03.12Z”)

string version                                       # Version of the protocol [Major].[Minor].[Patch] (e.g. 1.3.2)

string manufacturer                                  # Manufacturer of the AGV

string serial_number                                  # Serial Number of the AGV

# CONTENTS
string order_id                                       # Unique order identification “none” if vehicle is idle and has no order

string order_update_id                                 # order_update identification. Is unique per order_id. If an order update is rejected, this field is to be passed in the rejection message.

string last_node_id                                    # node_id of last reached node or current node if agv is on node
                                                     # (sample: node 7)

int32 last_node_sequence_id                             # sequence_id of the last reached node or, if the AGV is currently on a node, sequence_id of current node.
                                                     # “0” if no last_node_sequence_id is available.

bool driving                                         # True: indicates that the AGV is driving and/or rotating. Other
                                                     # movements of the AGV (e.g. lift movements) are not included here.
                                                     # False: indicates that the AGV is neither driving nor rotating

bool new_base_requested                                # True: AGV is almost at the end of the base and will reduce speed if no new base is transmitted. Trigger for MC to send ne base
                                                     # False: no base update required

# Optional
#float64 distance_since_last_node                       # Used by line guided vehicles to indicate the distance it has been driving past the last_node_id. Distance is in meters

string operating_mode                                 # Enum {automatic, semi-automatic, manual, service, teach-in}
                                                     # For additional information see chapter 6.2

vda5050_msgs/NodeState[] node_states                  # Array of node_state_objects (empty list if idle)

vda5050_msgs/EdgeState[] edge_states                  # Array of edge_state_objects (empty list if idle)

vda5050_msgs/AGVPosition agv_position                 # Current position of the AGV. Optional: Can only be omitted for
                                                     # AGVs without the capability to localize themselves, e.g. line
                                                     # guided AGVs.

# Optional?
#vda5050_msgs/Velocity velocity                      # AGV's velocity in vehicle coordinates

vda5050_msgs/Trajectory trajectory                   # The trajectory is to be communicated as a NURBS and is defined in
                                                     # chapter 5.1. Optional: AGVs that plan their own path are to
                                                     # communicate their path via a trajectory object.

vda5050_msgs/Load[] loads                            # Loads that are currently handled by the AGV.

float64 distance_since_last_node                        # For line guided vehicles.
vda5050_msgs/CurrentAction[] action_states            # Contains a list of the current actions and the actions which are
                                                     # yet to be finished. This may include actions from previous nodes
                                                     # that are still in progress. When an action is completed, an
                                                     # updated state message is published with action_status set to
                                                     # finished and if applicable with the corresponding
                                                     # result_description. Completed actions are omitted from the array

vda5050_msgs/BatteryInformation battery_state         # Contains all batteryrelated information.

vda5050_msgs/Error[] errors                          # Array of errorobjects. Empty array if there are no errors.

vda5050_msgs/SafetyStatus safety_status               # Contains all safetyrelated information.




                                                     # Enums for operating_mode
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
