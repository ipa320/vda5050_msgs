string eStop            # Enum {autoAck, manual, remote, none} Acknowledge-Type of eStop:
                        # autoAck: autoacknowledgeable e-stop is activated e.g. by bumper or protective field
                        # manual: e-stop has to be acknowledged manually at the vehicle
                        # remote: facility estop has to be acknowledged remotely
                        # none: no e-stop activated
bool fieldViolation     # Protective field violation. True: field is violated False: field is not violated

# Enums for eStop
string AUTO_ACK=autoAck
string MANUAL=manual
string REMOTE=remote
string NONE=none
