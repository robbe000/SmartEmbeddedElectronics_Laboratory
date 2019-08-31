# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "driver: 1 messages, 0 services")

set(MSG_I_FLAGS "-Idriver:/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Idriver:/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(driver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" NAME_WE)
add_custom_target(_driver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "driver" "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(driver
  "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/driver
)

### Generating Services

### Generating Module File
_generate_module_cpp(driver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/driver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(driver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(driver_generate_messages driver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" NAME_WE)
add_dependencies(driver_generate_messages_cpp _driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(driver_gencpp)
add_dependencies(driver_gencpp driver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS driver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(driver
  "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/driver
)

### Generating Services

### Generating Module File
_generate_module_eus(driver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/driver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(driver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(driver_generate_messages driver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" NAME_WE)
add_dependencies(driver_generate_messages_eus _driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(driver_geneus)
add_dependencies(driver_geneus driver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS driver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(driver
  "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/driver
)

### Generating Services

### Generating Module File
_generate_module_lisp(driver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/driver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(driver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(driver_generate_messages driver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" NAME_WE)
add_dependencies(driver_generate_messages_lisp _driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(driver_genlisp)
add_dependencies(driver_genlisp driver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS driver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(driver
  "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/driver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(driver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/driver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(driver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(driver_generate_messages driver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" NAME_WE)
add_dependencies(driver_generate_messages_nodejs _driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(driver_gennodejs)
add_dependencies(driver_gennodejs driver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS driver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(driver
  "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/driver
)

### Generating Services

### Generating Module File
_generate_module_py(driver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/driver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(driver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(driver_generate_messages driver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robbe/Documents/github/SmartEmbeddedElectronics_Laboratory/catkin_ws/src/driver/msg/directions.msg" NAME_WE)
add_dependencies(driver_generate_messages_py _driver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(driver_genpy)
add_dependencies(driver_genpy driver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS driver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/driver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(driver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET driver_generate_messages_cpp)
  add_dependencies(driver_generate_messages_cpp driver_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(driver_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/driver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(driver_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET driver_generate_messages_eus)
  add_dependencies(driver_generate_messages_eus driver_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(driver_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/driver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(driver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET driver_generate_messages_lisp)
  add_dependencies(driver_generate_messages_lisp driver_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(driver_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/driver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/driver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(driver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET driver_generate_messages_nodejs)
  add_dependencies(driver_generate_messages_nodejs driver_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(driver_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/driver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/driver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/driver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(driver_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET driver_generate_messages_py)
  add_dependencies(driver_generate_messages_py driver_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(driver_generate_messages_py sensor_msgs_generate_messages_py)
endif()
