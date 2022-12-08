# HEADER
vda5050_msgs/Header header      # header of the message

# CONTENTS
string actionID	                # action_ID
string actionType               # actionType of the action.
                                # Optional: Only for informational or visualization purposes. Order knows the type.

string actionStatus             # waiting: waiting for trigger
                                # (passing the node, entering the edge)
                                # Paused: paused by instantAction or external trigger
                                # failed: action could not be performed.

string resultDescription        # Description of the result, e.g. the result of a RFID-read.
                                # Errors will be transmitted in errors. Examples for results are given in 6.5


# Enums for actionStatus
string waiting=waiting
string initializing=initializing
string running=running
string paused=paused
string finished=finished
string failed=failed

