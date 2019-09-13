string actionId           # actionName_ID
string actionDescription  # Additional information on the current action
string actionStatus       # Enum {waiting; initializing; running; finished; failed} waiting: waiting for trigger
                          # failed: action could not be performed.
string resultDescription  # Description of the result, e.g. the result of a RFID-read. Errors will be transmitted in
                          # errors. Examples for results are given in 5.2

# Enums for actionStatus
string WAITING="waiting"
string INITIALIZING="initializing"
string RUNNING="running"
string FINISHED="finished"
string FAILED="failed"
