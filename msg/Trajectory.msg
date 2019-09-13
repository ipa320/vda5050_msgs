# Points defining a spline. Theta allows holonomic vehicles to rotate along the trajecotry.

int32 degree                              # Range: [1 … infinity) Defines the number of control points that influence 
                                          # any given point on the curve. Increasing the degree increases continuity. 
                                          # If not defined, the default value is 1.

float64[] knotVector                      # Range: [0.0 … 1.0] Sequence of parameter values that determines where and 
                                          # how the control points affect the NURBS curve. knotVector has size of number
                                          # of control points + degree + 1.
                                          
vda5050_msgs/ControlPoint[] controlPoints # List of JSON controlPoint objects defining the control points of the nurbs,
                                          # which includes the beginning and end point.
