string errorType                              # Type / name of error
vda5050_msgs/ErrorReference[] errorReferences   # Array of references to identify the source of the error (e. g. headerId,
                                              # orderId, actionId, …). For additional information see best practice
                                              # chapter 6.3
string errorDescription                       # Error description 
string errorLevel                             # Enum {warning, fatal} warning: AGV is ready to start (e.g. maintenance
                                              # cycle expiration warning) fatal: AGV is not in running condition, user
                                              # intervention required (e.g. laser scanner is contaminated)

# Enums for errorLevel
string WARNING=warning
string FATAL=fatal
