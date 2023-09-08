string actionId           # actionName_ID
string actionType         # actionType of the action.
                          # Optional: Only for informational or
                          # visualization purposes. Order knows
                          # the type.
string actionDescription  # Additional information on the current action
string actionStatus       # Enum {waiting; initializing; running; finished; failed} waiting: waiting for trigger
                          # failed: action could not be performed.
string resultDescription  # Description of the result, e.g. the result of a RFID-read. Errors will be transmitted in
                          # errors. Examples for results are given in 5.2

# Enums for actionStatus
string WAITING=WAITING
string INITIALIZING=INITIALIZING
string RUNNING=RUNNING
string PAUSED=PAUSED
string FINISHED=FINISHED
string FAILED=FAILED
