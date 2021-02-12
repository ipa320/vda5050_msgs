cmake_minimum_required(VERSION 3.5)
project(vda5050_msgs)


if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

find_package(std_msgs REQUIRED)

set(msg_files
    "msg/AGVPosition.msg"
    "msg/Action.msg"
    "msg/ActionParameter.msg"
    "msg/BatteryState.msg"
    "msg/BoundingBoxReference.msg"
    "msg/Connection.msg"
    "msg/ControlPoint.msg"
    "msg/CurrentAction.msg"
    "msg/Edge.msg"
    "msg/EdgeState.msg"
    "msg/Error.msg"
    "msg/ErrorReference.msg"
    "msg/Info.msg"
    "msg/InfoReference.msg"
    "msg/Header.msg"
    "msg/InstantActions.msg"
    "msg/Load.msg"
    "msg/LoadDimensions.msg"
    "msg/Node.msg"
    "msg/NodePosition.msg"
    "msg/NodeState.msg"
    "msg/Order.msg"
    "msg/OrderInformation.msg"
    "msg/SafetyState.msg"
    "msg/Trajectory.msg"
    "msg/Velocity.msg"
    "msg/Visualization.msg"
)
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES 
    std_msgs
    builtin_interfaces
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
