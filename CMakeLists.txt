cmake_minimum_required(VERSION 2.8.3)
project(vda5050_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  message_runtime
  std_msgs
)

add_message_files(
  DIRECTORY
    msg
  FILES
    AGVPosition.msg
    Action.msg
    ActionParameter.msg
    BatteryState.msg
    BoundingBoxReference.msg
    ControlPoint.msg
    CurrentAction.msg
    Edge.msg
    EdgeState.msg
    Error.msg
    ErrorReference.msg
    Header.msg
    InstantActions.msg
    Info.msg
    InfoReference.msg
    Load.msg
    LoadDimensions.msg
    Node.msg
    NodePosition.msg
    NodeState.msg
    Order.msg
    OrderInformation.msg
    SafetyState.msg
    Trajectory.msg
    Velocity.msg
    Visualization.msg
   )
generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    std_msgs
    message_generation
    message_runtime
)
