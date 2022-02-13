cmake_minimum_required(VERSION 3.5)
project(smart_lidar)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR aarch64)
set(CMAKE_SYSROOT /home/mateusz/KV260/package/sdk/sysroots/cortexa72-cortexa53-xilinx-linux)
set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

message(${CMAKE_CURRENT_LIST_DIR})

include_directories(/home/mateusz/KV260/package/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/include)

link_directories(/home/mateusz/KV260/package/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/lib
/home/mateusz/KV260/package/sdk/sysroots/cortexa72-cortexa53-xilinx-linux/usr/lib)

add_executable(smart_lidar src/smart_lidar.cpp)

target_link_libraries(smart_lidar std_msgs__rosidl_typesupport_cpp sensor_msgs__rosidl_typesupport_cpp) 

target_link_libraries(smart_lidar tracetools rcl rclcpp  rcutils rcpputils rcl_yaml_param_parser yaml rosidl_typesupport_c rosidl_typesupport_cpp rosidl_runtime_c rcl_logging_spdlog spdlog rmw_implementation rmw)

target_link_libraries(smart_lidar pthread crypt dl rt xilinxopencl)

#install(TARGETS
#  smart_lidar
#  DESTINATION lib/${PROJECT_NAME})