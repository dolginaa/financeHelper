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
include CMakeFiles/untitled1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/untitled1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/untitled1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/untitled1.dir/flags.make

untitled1_autogen/timestamp: /opt/anaconda3/bin/moc
untitled1_autogen/timestamp: /opt/anaconda3/bin/uic
untitled1_autogen/timestamp: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target untitled1"
	/opt/homebrew/bin/cmake -E cmake_autogen /Users/adolgina/untitled1/build/CMakeFiles/untitled1_autogen.dir/AutogenInfo.json ""
	/opt/homebrew/bin/cmake -E touch /Users/adolgina/untitled1/build/untitled1_autogen/timestamp

CMakeFiles/untitled1.dir/codegen:
.PHONY : CMakeFiles/untitled1.dir/codegen

CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o: untitled1_autogen/mocs_compilation.cpp
CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o -MF CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o -c /Users/adolgina/untitled1/build/untitled1_autogen/mocs_compilation.cpp

CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/build/untitled1_autogen/mocs_compilation.cpp > CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.i

CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/build/untitled1_autogen/mocs_compilation.cpp -o CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.s

CMakeFiles/untitled1.dir/main.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/main.cpp.o: /Users/adolgina/untitled1/main.cpp
CMakeFiles/untitled1.dir/main.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/untitled1.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/main.cpp.o -MF CMakeFiles/untitled1.dir/main.cpp.o.d -o CMakeFiles/untitled1.dir/main.cpp.o -c /Users/adolgina/untitled1/main.cpp

CMakeFiles/untitled1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/main.cpp > CMakeFiles/untitled1.dir/main.cpp.i

CMakeFiles/untitled1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/main.cpp -o CMakeFiles/untitled1.dir/main.cpp.s

CMakeFiles/untitled1.dir/src/image_processing.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/src/image_processing.cpp.o: /Users/adolgina/untitled1/src/image_processing.cpp
CMakeFiles/untitled1.dir/src/image_processing.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/untitled1.dir/src/image_processing.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/src/image_processing.cpp.o -MF CMakeFiles/untitled1.dir/src/image_processing.cpp.o.d -o CMakeFiles/untitled1.dir/src/image_processing.cpp.o -c /Users/adolgina/untitled1/src/image_processing.cpp

CMakeFiles/untitled1.dir/src/image_processing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/src/image_processing.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/src/image_processing.cpp > CMakeFiles/untitled1.dir/src/image_processing.cpp.i

CMakeFiles/untitled1.dir/src/image_processing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/src/image_processing.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/src/image_processing.cpp -o CMakeFiles/untitled1.dir/src/image_processing.cpp.s

CMakeFiles/untitled1.dir/src/text_recognition.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/src/text_recognition.cpp.o: /Users/adolgina/untitled1/src/text_recognition.cpp
CMakeFiles/untitled1.dir/src/text_recognition.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/untitled1.dir/src/text_recognition.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/src/text_recognition.cpp.o -MF CMakeFiles/untitled1.dir/src/text_recognition.cpp.o.d -o CMakeFiles/untitled1.dir/src/text_recognition.cpp.o -c /Users/adolgina/untitled1/src/text_recognition.cpp

CMakeFiles/untitled1.dir/src/text_recognition.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/src/text_recognition.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/src/text_recognition.cpp > CMakeFiles/untitled1.dir/src/text_recognition.cpp.i

CMakeFiles/untitled1.dir/src/text_recognition.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/src/text_recognition.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/src/text_recognition.cpp -o CMakeFiles/untitled1.dir/src/text_recognition.cpp.s

CMakeFiles/untitled1.dir/src/storage.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/src/storage.cpp.o: /Users/adolgina/untitled1/src/storage.cpp
CMakeFiles/untitled1.dir/src/storage.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/untitled1.dir/src/storage.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/src/storage.cpp.o -MF CMakeFiles/untitled1.dir/src/storage.cpp.o.d -o CMakeFiles/untitled1.dir/src/storage.cpp.o -c /Users/adolgina/untitled1/src/storage.cpp

CMakeFiles/untitled1.dir/src/storage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/src/storage.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/src/storage.cpp > CMakeFiles/untitled1.dir/src/storage.cpp.i

CMakeFiles/untitled1.dir/src/storage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/src/storage.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/src/storage.cpp -o CMakeFiles/untitled1.dir/src/storage.cpp.s

CMakeFiles/untitled1.dir/src/chart_widget.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/src/chart_widget.cpp.o: /Users/adolgina/untitled1/src/chart_widget.cpp
CMakeFiles/untitled1.dir/src/chart_widget.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/untitled1.dir/src/chart_widget.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/src/chart_widget.cpp.o -MF CMakeFiles/untitled1.dir/src/chart_widget.cpp.o.d -o CMakeFiles/untitled1.dir/src/chart_widget.cpp.o -c /Users/adolgina/untitled1/src/chart_widget.cpp

CMakeFiles/untitled1.dir/src/chart_widget.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/src/chart_widget.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/src/chart_widget.cpp > CMakeFiles/untitled1.dir/src/chart_widget.cpp.i

CMakeFiles/untitled1.dir/src/chart_widget.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/src/chart_widget.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/src/chart_widget.cpp -o CMakeFiles/untitled1.dir/src/chart_widget.cpp.s

CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o: /Users/adolgina/untitled1/ui/add_income_dialog.cpp
CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o -MF CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o.d -o CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o -c /Users/adolgina/untitled1/ui/add_income_dialog.cpp

CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/ui/add_income_dialog.cpp > CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.i

CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/ui/add_income_dialog.cpp -o CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.s

CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o: /Users/adolgina/untitled1/ui/report_dialog.cpp
CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o -MF CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o.d -o CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o -c /Users/adolgina/untitled1/ui/report_dialog.cpp

CMakeFiles/untitled1.dir/ui/report_dialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/ui/report_dialog.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/ui/report_dialog.cpp > CMakeFiles/untitled1.dir/ui/report_dialog.cpp.i

CMakeFiles/untitled1.dir/ui/report_dialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/ui/report_dialog.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/ui/report_dialog.cpp -o CMakeFiles/untitled1.dir/ui/report_dialog.cpp.s

CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o: /Users/adolgina/untitled1/ui/upload_receipt_dialog.cpp
CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o -MF CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o.d -o CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o -c /Users/adolgina/untitled1/ui/upload_receipt_dialog.cpp

CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/ui/upload_receipt_dialog.cpp > CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.i

CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/ui/upload_receipt_dialog.cpp -o CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.s

CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o: /Users/adolgina/untitled1/ui/expense_report_dialog.cpp
CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o -MF CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o.d -o CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o -c /Users/adolgina/untitled1/ui/expense_report_dialog.cpp

CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/ui/expense_report_dialog.cpp > CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.i

CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/ui/expense_report_dialog.cpp -o CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.s

CMakeFiles/untitled1.dir/src/mainwindow.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/src/mainwindow.cpp.o: /Users/adolgina/untitled1/src/mainwindow.cpp
CMakeFiles/untitled1.dir/src/mainwindow.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/untitled1.dir/src/mainwindow.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/src/mainwindow.cpp.o -MF CMakeFiles/untitled1.dir/src/mainwindow.cpp.o.d -o CMakeFiles/untitled1.dir/src/mainwindow.cpp.o -c /Users/adolgina/untitled1/src/mainwindow.cpp

CMakeFiles/untitled1.dir/src/mainwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/src/mainwindow.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/src/mainwindow.cpp > CMakeFiles/untitled1.dir/src/mainwindow.cpp.i

CMakeFiles/untitled1.dir/src/mainwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/src/mainwindow.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/src/mainwindow.cpp -o CMakeFiles/untitled1.dir/src/mainwindow.cpp.s

CMakeFiles/untitled1.dir/src/api.cpp.o: CMakeFiles/untitled1.dir/flags.make
CMakeFiles/untitled1.dir/src/api.cpp.o: /Users/adolgina/untitled1/src/api.cpp
CMakeFiles/untitled1.dir/src/api.cpp.o: CMakeFiles/untitled1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/untitled1.dir/src/api.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/untitled1.dir/src/api.cpp.o -MF CMakeFiles/untitled1.dir/src/api.cpp.o.d -o CMakeFiles/untitled1.dir/src/api.cpp.o -c /Users/adolgina/untitled1/src/api.cpp

CMakeFiles/untitled1.dir/src/api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/untitled1.dir/src/api.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/adolgina/untitled1/src/api.cpp > CMakeFiles/untitled1.dir/src/api.cpp.i

CMakeFiles/untitled1.dir/src/api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/untitled1.dir/src/api.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/adolgina/untitled1/src/api.cpp -o CMakeFiles/untitled1.dir/src/api.cpp.s

# Object files for target untitled1
untitled1_OBJECTS = \
"CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/untitled1.dir/main.cpp.o" \
"CMakeFiles/untitled1.dir/src/image_processing.cpp.o" \
"CMakeFiles/untitled1.dir/src/text_recognition.cpp.o" \
"CMakeFiles/untitled1.dir/src/storage.cpp.o" \
"CMakeFiles/untitled1.dir/src/chart_widget.cpp.o" \
"CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o" \
"CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o" \
"CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o" \
"CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o" \
"CMakeFiles/untitled1.dir/src/mainwindow.cpp.o" \
"CMakeFiles/untitled1.dir/src/api.cpp.o"

# External object files for target untitled1
untitled1_EXTERNAL_OBJECTS =

untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/untitled1_autogen/mocs_compilation.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/main.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/src/image_processing.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/src/text_recognition.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/src/storage.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/src/chart_widget.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/ui/add_income_dialog.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/ui/report_dialog.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/ui/upload_receipt_dialog.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/ui/expense_report_dialog.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/src/mainwindow.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/src/api.cpp.o
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/build.make
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5Pdf.5.15.9.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5Test.5.15.2.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5PrintSupport.5.15.2.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5Charts.5.15.2.dylib
untitled1.app/Contents/MacOS/untitled1: /Users/adolgina/untitled1/third_party/tesseract/lib/libtesseract.dylib
untitled1.app/Contents/MacOS/untitled1: /Users/adolgina/untitled1/third_party/leptonica/lib/libleptonica.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_gapi.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_stitching.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_alphamat.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_aruco.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_bgsegm.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_bioinspired.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_ccalib.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_dnn_objdetect.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_dnn_superres.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_dpm.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_face.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_freetype.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_fuzzy.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_hfs.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_img_hash.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_intensity_transform.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_line_descriptor.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_mcc.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_quality.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_rapid.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_reg.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_rgbd.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_saliency.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_sfm.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_signal.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_stereo.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_structured_light.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_superres.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_surface_matching.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_tracking.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_videostab.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_viz.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_wechat_qrcode.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_xfeatures2d.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_xobjdetect.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_xphoto.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /Users/adolgina/untitled1/third_party/poppler/lib/libpoppler.dylib
untitled1.app/Contents/MacOS/untitled1: /Users/adolgina/untitled1/third_party/poppler/lib/libpoppler-cpp.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5Widgets.5.15.2.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5Gui.5.15.2.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/anaconda3/lib/libQt5Core.5.15.2.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_shape.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_highgui.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_datasets.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_plot.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_text.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_ml.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_phase_unwrapping.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_optflow.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_ximgproc.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_video.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_videoio.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_imgcodecs.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_objdetect.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_calib3d.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_dnn.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_features2d.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_flann.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_photo.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_imgproc.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: /opt/homebrew/lib/libopencv_core.4.11.0.dylib
untitled1.app/Contents/MacOS/untitled1: CMakeFiles/untitled1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/adolgina/untitled1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable untitled1.app/Contents/MacOS/untitled1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/untitled1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/untitled1.dir/build: untitled1.app/Contents/MacOS/untitled1
.PHONY : CMakeFiles/untitled1.dir/build

CMakeFiles/untitled1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/untitled1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/untitled1.dir/clean

CMakeFiles/untitled1.dir/depend: untitled1_autogen/timestamp
	cd /Users/adolgina/untitled1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/adolgina/untitled1 /Users/adolgina/untitled1 /Users/adolgina/untitled1/build /Users/adolgina/untitled1/build /Users/adolgina/untitled1/build/CMakeFiles/untitled1.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/untitled1.dir/depend

