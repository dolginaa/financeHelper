# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/adolgina/untitled1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/adolgina/untitled1/build

# Utility rule file for gmock_autogen_timestamp_deps.

# Include any custom commands dependencies for this target.
include third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/progress.make

third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/codegen:
.PHONY : third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/codegen

gmock_autogen_timestamp_deps: third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/build.make
.PHONY : gmock_autogen_timestamp_deps

# Rule to build all files generated by this target.
third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/build: gmock_autogen_timestamp_deps
.PHONY : third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/build

third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/clean:
	cd /Users/adolgina/untitled1/build/third_party/googletest/googlemock && $(CMAKE_COMMAND) -P CMakeFiles/gmock_autogen_timestamp_deps.dir/cmake_clean.cmake
.PHONY : third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/clean

third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/depend:
	cd /Users/adolgina/untitled1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/adolgina/untitled1 /Users/adolgina/untitled1/third_party/googletest/googlemock /Users/adolgina/untitled1/build /Users/adolgina/untitled1/build/third_party/googletest/googlemock /Users/adolgina/untitled1/build/third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : third_party/googletest/googlemock/CMakeFiles/gmock_autogen_timestamp_deps.dir/depend

