# Action the AGV can perform. 

string actionId                                                 # Unique action identification consisting of the
                                                                # actionName and a postfix starting with  “_”. 
                                                                #
                                                                # Example: blink_1 Reason: Assignment of actions to
                                                                # nodes and edges.

string actionName                                               # Name of action (see List of actions) e.g. lift

string actionDescription                                        # Additional information on the action

string blockingType                                             # Enum {noBlock, softBlock, hardBlock} “noBlock” – all
                                                                # actions simultaneously “softBlock” – all actions
                                                                # except moving “hardBlock” – actions in sequence be
                                                                # performed at the same

string triggerPointType                                         # Enum {time, distance} Type of trigger can be time or
                                                                # distance. Refers to the time/distance after passing a
                                                                # node (N/A for edges) indicated in triggerPointValue.

float64 triggerPointValue                                       # [m] or [s] Specifies the time in seconds or distance
                                                                # in meters after passing a node until the action is
                                                                # triggered. Default is 0 (zero). Negative values
                                                                # describe positions before the node (triggerPoints are
                                                                # N/A for edges). Optional:Can be omitted if not needed.
                                                                # Cannot be used for edges. Cannot be used for
                                                                # instantActions.

string durationType                                             # Enum {time, distance} Action can last for a certain
                                                                # time or for a certain distance. Optional: Cannot be
                                                                # used for edges.

float64 durationValue                                           # [m] or [s] Specifies the time in seconds or distance 
                                                                # in meters that the action has to continue. Default 
                                                                # is 0 (zero). durationValue is N/A for edges. 
                                                                # Attention: depending on the type and value, it is 
                                                                # possible that an action can last beyond the following
                                                                # node.

vda5050_msgs/ActionParameter[] actionParameters                 # Array of actionParameter objects for the indicated 
                                                                # action e. g. deviceId, loadId, external Triggers. 
                                                                # See “Actions and Parameters”.
                                                                #
                                                                # Note on Porting to ROS:
                                                                # Since those parameter vary in type but their 
                                                                # serialization is always a json dictionary with "key"
                                                                # and "value" we decided to serialize the value as 
                                                                # string. This way the (de-)serialization has to be done by 
                                                                # the user depending on the key, but the protocol is met


# Enums for blockingType
string NO_BLOCK = "noBlock"
string SOFT_BLOCK = "softBlock"
string HARD_BLOCK = "hardBlock"

# Enums for triggerPointType and durationType
string TIME = "time"                                            
string DISTANCE = "distance"

