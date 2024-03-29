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
    ActionState.msg
    BatteryState.msg
    BoundingBoxReference.msg
    Connection.msg
    ControlPoint.msg
    Edge.msg
    EdgeState.msg
    Error.msg
    Errors.msg
    ErrorReference.msg
    Header.msg
    InstantActions.msg
    Info.msg
    InfoReference.msg
    Load.msg
    Loads.msg
    LoadDimensions.msg
    Node.msg
    NodePosition.msg
    NodeState.msg
    Order.msg
    SafetyState.msg
    State.msg
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
