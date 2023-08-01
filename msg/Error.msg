string errorType                                # Type / Name of the error

vda5050_msgs/ErrorReference[] errorReferences   # Array of references to identify the source of the error (e. g. headerId,
                                                # orderId, actionId, …). 

string errorDescription                         # Error description.

string errorLevel                               # Enum {WARNING, FATAL} 
                                                # WARNING: AGV is ready to start (e.g. maintenance cycle expiration WARNING) 
                                                # FATAL: AGV is not in running condition, user intervention required (e.g. laser scanner is contaminated)

# Enums for errorLevel
string WARNING=WARNING
string FATAL=FATAL
