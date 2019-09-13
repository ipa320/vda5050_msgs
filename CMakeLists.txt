cmake_minimum_required(VERSION 2.8.3)
project(vda5050_msgs)

find_package(catkin REQUIRED
  message_generation
  std_msgs
)

add_message_files(
  DIRECTORY
    msg
  FILES
    Action.msg
    BatteryInformation.msg
    CurrentAction.msg
    Error.msg
    LoadDimensions.msg
    NodePosition.msg
    Order.msg
    ActionParameter.msg
    BoundingBoxReference.msg
    Edge.msg
    ErrorReference.msg
    Load.msg
    NodeState.msg
    SafetyStatus.msg
    AGVPosition.msg
    ControlPoint.msg
    EdgeState.msg
    Header.msg
    Node.msg
    OrderInformation.msg
    Trajectory.msg
   )
generate_messages(
  DEPENDENCIES
  std_msgs
  
)

catkin_package(
  CATKIN_DEPENDS 
    std_msgs
    message_generation
)
