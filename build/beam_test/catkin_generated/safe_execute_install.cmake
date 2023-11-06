execute_process(COMMAND "/home/mia/catkin_ws/build/beam_test/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/mia/catkin_ws/build/beam_test/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
