# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/pdf_tests_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/pdf_tests_autogen.dir/ParseCache.txt"
  "CMakeFiles/untitled1_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/untitled1_autogen.dir/ParseCache.txt"
  "pdf_tests_autogen"
  "third_party/googletest/googlemock/CMakeFiles/gmock_autogen.dir/AutogenUsed.txt"
  "third_party/googletest/googlemock/CMakeFiles/gmock_autogen.dir/ParseCache.txt"
  "third_party/googletest/googlemock/CMakeFiles/gmock_main_autogen.dir/AutogenUsed.txt"
  "third_party/googletest/googlemock/CMakeFiles/gmock_main_autogen.dir/ParseCache.txt"
  "third_party/googletest/googlemock/gmock_autogen"
  "third_party/googletest/googlemock/gmock_main_autogen"
  "third_party/googletest/googletest/CMakeFiles/gtest_autogen.dir/AutogenUsed.txt"
  "third_party/googletest/googletest/CMakeFiles/gtest_autogen.dir/ParseCache.txt"
  "third_party/googletest/googletest/CMakeFiles/gtest_main_autogen.dir/AutogenUsed.txt"
  "third_party/googletest/googletest/CMakeFiles/gtest_main_autogen.dir/ParseCache.txt"
  "third_party/googletest/googletest/gtest_autogen"
  "third_party/googletest/googletest/gtest_main_autogen"
  "untitled1_autogen"
  )
endif()
