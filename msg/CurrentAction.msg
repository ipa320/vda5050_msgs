string action_id           # action_name_ID
string action_description  # Additional information on the current action
string action_status       # Enum {waiting; initializing; running; finished; failed} waiting: waiting for trigger
                          # failed: action could not be performed.
string result_description  # Description of the result, e.g. the result of a RFID-read. Errors will be transmitted in
                          # errors. Examples for results are given in 5.2

# Enums for action_status
string WAITING="waiting"
string INITIALIZING="initializing"
string RUNNING="running"
string FINISHED="finished"
string FAILED="failed"
