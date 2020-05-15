# Action the AGV can perform. 

string action_id                                                # Unique action identification consisting of the
                                                                # action_name and a postfix starting with  “_”. 
                                                                #
                                                                # Example: blink_1 Reason: Assignment of actions to
                                                                # nodes and edges.

string action_name                                              # Name of action (see List of actions) e.g. lift

string action_description                                       # Additional information on the action

string blocking_type                                            # Enum {noBlock, softBlock, hardBlock} “noBlock” – all
                                                                # actions simultaneously “softBlock” – all actions
                                                                # except moving “hardBlock” – actions in sequence be
                                                                # performed at the same

string trigger_point_type                                        # Enum {time, distance} Type of trigger can be time or
                                                                # distance. Refers to the time/distance after passing a
                                                                # node (N/A for edges) indicated in trigger_point_value.

float64 trigger_point_value                                     # [m] or [s] Specifies the time in seconds or distance
                                                                # in meters after passing a node until the action is
                                                                # triggered. Default is 0 (zero). Negative values
                                                                # describe positions before the node (triggerPoints are
                                                                # N/A for edges). Optional:Can be omitted if not needed.
                                                                # Cannot be used for edges. Cannot be used for
                                                                # instantActions.

string duration_type                                            # Enum {time, distance} Action can last for a certain
                                                                # time or for a certain distance. Optional: Cannot be
                                                                # used for edges.

float64 duration_value                                          # [m] or [s] Specifies the time in seconds or distance 
                                                                # in meters that the action has to continue. Default 
                                                                # is 0 (zero). duration_value is N/A for edges. 
                                                                # Attention: depending on the type and value, it is 
                                                                # possible that an action can last beyond the following
                                                                # node.

vda5050_msgs/ActionParameter[] action_parameters                # Array of actionParameter objects for the indicated 
                                                                # action e. g. deviceId, loadId, external Triggers. 
                                                                # See “Actions and Parameters”.
                                                                #
                                                                # Note on Porting to ROS:
                                                                # Since those parameter vary in type but their 
                                                                # serialization is always a json dictionary with "key"
                                                                # and "value" we decided to serialize the value as 
                                                                # string. This way the (de-)serialization has to be done by 
                                                                # the user depending on the key, but the protocol is met


# Enums for blocking_type
string NO_BLOCK = "noBlock"
string SOFT_BLOCK = "softBlock"
string HARD_BLOCK = "hardBlock"

# Enums for trigger_point_type and duration_type
string TIME = "time"                                            
string DISTANCE = "distance"

