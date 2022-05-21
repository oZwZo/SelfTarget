# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /var/lib/snapd/snap/cmake/1000/bin/cmake

# The command to remove a file.
RM = /var/lib/snapd/snap/cmake/1000/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wergillius/Project/SelfTarget/indel_analysis/indelmap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wergillius/Project/SelfTarget/indel_analysis/indelmap

# Include any dependencies generated for this target.
include CMakeFiles/indelgen.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/indelgen.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/indelgen.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/indelgen.dir/flags.make

CMakeFiles/indelgen.dir/indel.cpp.o: CMakeFiles/indelgen.dir/flags.make
CMakeFiles/indelgen.dir/indel.cpp.o: indel.cpp
CMakeFiles/indelgen.dir/indel.cpp.o: CMakeFiles/indelgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/indelgen.dir/indel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelgen.dir/indel.cpp.o -MF CMakeFiles/indelgen.dir/indel.cpp.o.d -o CMakeFiles/indelgen.dir/indel.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp

CMakeFiles/indelgen.dir/indel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelgen.dir/indel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp > CMakeFiles/indelgen.dir/indel.cpp.i

CMakeFiles/indelgen.dir/indel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelgen.dir/indel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp -o CMakeFiles/indelgen.dir/indel.cpp.s

CMakeFiles/indelgen.dir/oligo.cpp.o: CMakeFiles/indelgen.dir/flags.make
CMakeFiles/indelgen.dir/oligo.cpp.o: oligo.cpp
CMakeFiles/indelgen.dir/oligo.cpp.o: CMakeFiles/indelgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/indelgen.dir/oligo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelgen.dir/oligo.cpp.o -MF CMakeFiles/indelgen.dir/oligo.cpp.o.d -o CMakeFiles/indelgen.dir/oligo.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp

CMakeFiles/indelgen.dir/oligo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelgen.dir/oligo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp > CMakeFiles/indelgen.dir/oligo.cpp.i

CMakeFiles/indelgen.dir/oligo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelgen.dir/oligo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp -o CMakeFiles/indelgen.dir/oligo.cpp.s

CMakeFiles/indelgen.dir/readmap.cpp.o: CMakeFiles/indelgen.dir/flags.make
CMakeFiles/indelgen.dir/readmap.cpp.o: readmap.cpp
CMakeFiles/indelgen.dir/readmap.cpp.o: CMakeFiles/indelgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/indelgen.dir/readmap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelgen.dir/readmap.cpp.o -MF CMakeFiles/indelgen.dir/readmap.cpp.o.d -o CMakeFiles/indelgen.dir/readmap.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp

CMakeFiles/indelgen.dir/readmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelgen.dir/readmap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp > CMakeFiles/indelgen.dir/readmap.cpp.i

CMakeFiles/indelgen.dir/readmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelgen.dir/readmap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp -o CMakeFiles/indelgen.dir/readmap.cpp.s

CMakeFiles/indelgen.dir/gen.cpp.o: CMakeFiles/indelgen.dir/flags.make
CMakeFiles/indelgen.dir/gen.cpp.o: gen.cpp
CMakeFiles/indelgen.dir/gen.cpp.o: CMakeFiles/indelgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/indelgen.dir/gen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelgen.dir/gen.cpp.o -MF CMakeFiles/indelgen.dir/gen.cpp.o.d -o CMakeFiles/indelgen.dir/gen.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp

CMakeFiles/indelgen.dir/gen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelgen.dir/gen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp > CMakeFiles/indelgen.dir/gen.cpp.i

CMakeFiles/indelgen.dir/gen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelgen.dir/gen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp -o CMakeFiles/indelgen.dir/gen.cpp.s

CMakeFiles/indelgen.dir/indelgen.cpp.o: CMakeFiles/indelgen.dir/flags.make
CMakeFiles/indelgen.dir/indelgen.cpp.o: indelgen.cpp
CMakeFiles/indelgen.dir/indelgen.cpp.o: CMakeFiles/indelgen.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/indelgen.dir/indelgen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelgen.dir/indelgen.cpp.o -MF CMakeFiles/indelgen.dir/indelgen.cpp.o.d -o CMakeFiles/indelgen.dir/indelgen.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indelgen.cpp

CMakeFiles/indelgen.dir/indelgen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelgen.dir/indelgen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indelgen.cpp > CMakeFiles/indelgen.dir/indelgen.cpp.i

CMakeFiles/indelgen.dir/indelgen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelgen.dir/indelgen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indelgen.cpp -o CMakeFiles/indelgen.dir/indelgen.cpp.s

# Object files for target indelgen
indelgen_OBJECTS = \
"CMakeFiles/indelgen.dir/indel.cpp.o" \
"CMakeFiles/indelgen.dir/oligo.cpp.o" \
"CMakeFiles/indelgen.dir/readmap.cpp.o" \
"CMakeFiles/indelgen.dir/gen.cpp.o" \
"CMakeFiles/indelgen.dir/indelgen.cpp.o"

# External object files for target indelgen
indelgen_EXTERNAL_OBJECTS =

indelgen: CMakeFiles/indelgen.dir/indel.cpp.o
indelgen: CMakeFiles/indelgen.dir/oligo.cpp.o
indelgen: CMakeFiles/indelgen.dir/readmap.cpp.o
indelgen: CMakeFiles/indelgen.dir/gen.cpp.o
indelgen: CMakeFiles/indelgen.dir/indelgen.cpp.o
indelgen: CMakeFiles/indelgen.dir/build.make
indelgen: CMakeFiles/indelgen.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable indelgen"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/indelgen.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/indelgen.dir/build: indelgen
.PHONY : CMakeFiles/indelgen.dir/build

CMakeFiles/indelgen.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/indelgen.dir/cmake_clean.cmake
.PHONY : CMakeFiles/indelgen.dir/clean

CMakeFiles/indelgen.dir/depend:
	cd /home/wergillius/Project/SelfTarget/indel_analysis/indelmap && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles/indelgen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/indelgen.dir/depend
