string eStop            # Enum {AUTOACK, MANUAL, REMOTE, NONE} Acknowledge-Type of eStop: 
                        # AUTOACK: autoacknowledgeable e-stop is activated e.g. by bumper or protective field
                        # MANUAL: e-stop has to be acknowledged manually at the vehicle 
                        # REMOTE: facility estop has to be acknowledged remotely 
                        # NONE: No e-stop activated

bool fieldViolation     # Protective field violation. 
                        # True: field is violated. 
                        # False: field is not violated 

# Enums for eStop
string AUTOACK=AUTOACK
string MANUAL=MANUAL
string REMOTE=REMOTE
string NONE=NONE