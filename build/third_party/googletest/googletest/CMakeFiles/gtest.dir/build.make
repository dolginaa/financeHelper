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

# Include any dependencies generated for this target.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/compiler_depend.make

# Include the progress variables for this target.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/progress.make

# Include the compile flags for this target's objects.
include third_party/googletest/googletest/CMakeFiles/gtest.dir/flags.make

third_party/googletest/googletest/gtest_autogen/timestamp: /opt/anaconda3/bin/moc
third_party/googletest/googletest/gtest_autogen/timestamp: /opt/anaconda3/bin/uic
third_party/googletest/googletest/gtest_autogen/timestamp: third_party/googletest/googletest/CMakeFiles/gtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target gtest"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /opt/homebrew/bin/cmake -E cmake_autogen /Users/adolgina/untitled1/build/third_party/googletest/googletest/CMakeFiles/gtest_autogen.dir/AutogenInfo.json ""
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /opt/homebrew/bin/cmake -E touch /Users/adolgina/untitled1/build/third_party/googletest/googletest/gtest_autogen/timestamp

third_party/googletest/googletest/CMakeFiles/gtest.dir/codegen:
.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/codegen

third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o: third_party/googletest/googletest/CMakeFiles/gtest.dir/flags.make
third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o: third_party/googletest/googletest/gtest_autogen/mocs_compilation.cpp
third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o: third_party/googletest/googletest/CMakeFiles/gtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o -MF CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o -c /Users/adolgina/untitled1/build/third_party/googletest/googletest/gtest_autogen/mocs_compilation.cpp

third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.i"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/build/third_party/googletest/googletest/gtest_autogen/mocs_compilation.cpp > CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.i

third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.s"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/build/third_party/googletest/googletest/gtest_autogen/mocs_compilation.cpp -o CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.s

third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: third_party/googletest/googletest/CMakeFiles/gtest.dir/flags.make
third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: /Users/adolgina/untitled1/third_party/googletest/googletest/src/gtest-all.cc
third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o: third_party/googletest/googletest/CMakeFiles/gtest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o -MF CMakeFiles/gtest.dir/src/gtest-all.cc.o.d -o CMakeFiles/gtest.dir/src/gtest-all.cc.o -c /Users/adolgina/untitled1/third_party/googletest/googletest/src/gtest-all.cc

third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/gtest.dir/src/gtest-all.cc.i"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/third_party/googletest/googletest/src/gtest-all.cc > CMakeFiles/gtest.dir/src/gtest-all.cc.i

third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/gtest.dir/src/gtest-all.cc.s"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/third_party/googletest/googletest/src/gtest-all.cc -o CMakeFiles/gtest.dir/src/gtest-all.cc.s

# Object files for target gtest
gtest_OBJECTS = \
"CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/gtest.dir/src/gtest-all.cc.o"

# External object files for target gtest
gtest_EXTERNAL_OBJECTS =

lib/libgtest.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/gtest_autogen/mocs_compilation.cpp.o
lib/libgtest.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
lib/libgtest.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/build.make
lib/libgtest.a: third_party/googletest/googletest/CMakeFiles/gtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../../lib/libgtest.a"
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean_target.cmake
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
third_party/googletest/googletest/CMakeFiles/gtest.dir/build: lib/libgtest.a
.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/build

third_party/googletest/googletest/CMakeFiles/gtest.dir/clean:
	cd /Users/adolgina/untitled1/build/third_party/googletest/googletest && $(CMAKE_COMMAND) -P CMakeFiles/gtest.dir/cmake_clean.cmake
.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/clean

third_party/googletest/googletest/CMakeFiles/gtest.dir/depend: third_party/googletest/googletest/gtest_autogen/timestamp
	cd /Users/adolgina/untitled1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/adolgina/untitled1 /Users/adolgina/untitled1/third_party/googletest/googletest /Users/adolgina/untitled1/build /Users/adolgina/untitled1/build/third_party/googletest/googletest /Users/adolgina/untitled1/build/third_party/googletest/googletest/CMakeFiles/gtest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : third_party/googletest/googletest/CMakeFiles/gtest.dir/depend

