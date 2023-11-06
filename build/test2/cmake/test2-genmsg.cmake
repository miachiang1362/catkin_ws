# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "test2: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(test2_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_test2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test2" "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" NAME_WE)
add_custom_target(_test2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test2" "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" ""
)

get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Beam.srv" NAME_WE)
add_custom_target(_test2_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "test2" "/home/mia/catkin_ws/src/test2/srv/Beam.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(test2
  "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test2
)
_generate_srv_cpp(test2
  "/home/mia/catkin_ws/src/test2/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test2
)
_generate_srv_cpp(test2
  "/home/mia/catkin_ws/src/test2/srv/Beam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test2
)

### Generating Module File
_generate_module_cpp(test2
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test2
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(test2_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(test2_generate_messages test2_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test2_generate_messages_cpp _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" NAME_WE)
add_dependencies(test2_generate_messages_cpp _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Beam.srv" NAME_WE)
add_dependencies(test2_generate_messages_cpp _test2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test2_gencpp)
add_dependencies(test2_gencpp test2_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test2_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(test2
  "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test2
)
_generate_srv_eus(test2
  "/home/mia/catkin_ws/src/test2/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test2
)
_generate_srv_eus(test2
  "/home/mia/catkin_ws/src/test2/srv/Beam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test2
)

### Generating Module File
_generate_module_eus(test2
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test2
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(test2_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(test2_generate_messages test2_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test2_generate_messages_eus _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" NAME_WE)
add_dependencies(test2_generate_messages_eus _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Beam.srv" NAME_WE)
add_dependencies(test2_generate_messages_eus _test2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test2_geneus)
add_dependencies(test2_geneus test2_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test2_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(test2
  "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test2
)
_generate_srv_lisp(test2
  "/home/mia/catkin_ws/src/test2/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test2
)
_generate_srv_lisp(test2
  "/home/mia/catkin_ws/src/test2/srv/Beam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test2
)

### Generating Module File
_generate_module_lisp(test2
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test2
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(test2_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(test2_generate_messages test2_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test2_generate_messages_lisp _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" NAME_WE)
add_dependencies(test2_generate_messages_lisp _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Beam.srv" NAME_WE)
add_dependencies(test2_generate_messages_lisp _test2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test2_genlisp)
add_dependencies(test2_genlisp test2_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test2_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(test2
  "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test2
)
_generate_srv_nodejs(test2
  "/home/mia/catkin_ws/src/test2/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test2
)
_generate_srv_nodejs(test2
  "/home/mia/catkin_ws/src/test2/srv/Beam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test2
)

### Generating Module File
_generate_module_nodejs(test2
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test2
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(test2_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(test2_generate_messages test2_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test2_generate_messages_nodejs _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" NAME_WE)
add_dependencies(test2_generate_messages_nodejs _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Beam.srv" NAME_WE)
add_dependencies(test2_generate_messages_nodejs _test2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test2_gennodejs)
add_dependencies(test2_gennodejs test2_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test2_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(test2
  "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2
)
_generate_srv_py(test2
  "/home/mia/catkin_ws/src/test2/srv/Multiply.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2
)
_generate_srv_py(test2
  "/home/mia/catkin_ws/src/test2/srv/Beam.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2
)

### Generating Module File
_generate_module_py(test2
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(test2_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(test2_generate_messages test2_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(test2_generate_messages_py _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Multiply.srv" NAME_WE)
add_dependencies(test2_generate_messages_py _test2_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mia/catkin_ws/src/test2/srv/Beam.srv" NAME_WE)
add_dependencies(test2_generate_messages_py _test2_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(test2_genpy)
add_dependencies(test2_genpy test2_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS test2_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/test2
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(test2_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/test2
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(test2_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/test2
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(test2_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test2)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/test2
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(test2_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/test2
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(test2_generate_messages_py std_msgs_generate_messages_py)
endif()
