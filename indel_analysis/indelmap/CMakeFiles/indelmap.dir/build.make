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
include CMakeFiles/indelmap.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/indelmap.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/indelmap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/indelmap.dir/flags.make

CMakeFiles/indelmap.dir/indel.cpp.o: CMakeFiles/indelmap.dir/flags.make
CMakeFiles/indelmap.dir/indel.cpp.o: indel.cpp
CMakeFiles/indelmap.dir/indel.cpp.o: CMakeFiles/indelmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/indelmap.dir/indel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmap.dir/indel.cpp.o -MF CMakeFiles/indelmap.dir/indel.cpp.o.d -o CMakeFiles/indelmap.dir/indel.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp

CMakeFiles/indelmap.dir/indel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmap.dir/indel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp > CMakeFiles/indelmap.dir/indel.cpp.i

CMakeFiles/indelmap.dir/indel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmap.dir/indel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indel.cpp -o CMakeFiles/indelmap.dir/indel.cpp.s

CMakeFiles/indelmap.dir/oligo.cpp.o: CMakeFiles/indelmap.dir/flags.make
CMakeFiles/indelmap.dir/oligo.cpp.o: oligo.cpp
CMakeFiles/indelmap.dir/oligo.cpp.o: CMakeFiles/indelmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/indelmap.dir/oligo.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmap.dir/oligo.cpp.o -MF CMakeFiles/indelmap.dir/oligo.cpp.o.d -o CMakeFiles/indelmap.dir/oligo.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp

CMakeFiles/indelmap.dir/oligo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmap.dir/oligo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp > CMakeFiles/indelmap.dir/oligo.cpp.i

CMakeFiles/indelmap.dir/oligo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmap.dir/oligo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/oligo.cpp -o CMakeFiles/indelmap.dir/oligo.cpp.s

CMakeFiles/indelmap.dir/readmap.cpp.o: CMakeFiles/indelmap.dir/flags.make
CMakeFiles/indelmap.dir/readmap.cpp.o: readmap.cpp
CMakeFiles/indelmap.dir/readmap.cpp.o: CMakeFiles/indelmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/indelmap.dir/readmap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmap.dir/readmap.cpp.o -MF CMakeFiles/indelmap.dir/readmap.cpp.o.d -o CMakeFiles/indelmap.dir/readmap.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp

CMakeFiles/indelmap.dir/readmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmap.dir/readmap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp > CMakeFiles/indelmap.dir/readmap.cpp.i

CMakeFiles/indelmap.dir/readmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmap.dir/readmap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/readmap.cpp -o CMakeFiles/indelmap.dir/readmap.cpp.s

CMakeFiles/indelmap.dir/gen.cpp.o: CMakeFiles/indelmap.dir/flags.make
CMakeFiles/indelmap.dir/gen.cpp.o: gen.cpp
CMakeFiles/indelmap.dir/gen.cpp.o: CMakeFiles/indelmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/indelmap.dir/gen.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmap.dir/gen.cpp.o -MF CMakeFiles/indelmap.dir/gen.cpp.o.d -o CMakeFiles/indelmap.dir/gen.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp

CMakeFiles/indelmap.dir/gen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmap.dir/gen.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp > CMakeFiles/indelmap.dir/gen.cpp.i

CMakeFiles/indelmap.dir/gen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmap.dir/gen.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/gen.cpp -o CMakeFiles/indelmap.dir/gen.cpp.s

CMakeFiles/indelmap.dir/indelmap.cpp.o: CMakeFiles/indelmap.dir/flags.make
CMakeFiles/indelmap.dir/indelmap.cpp.o: indelmap.cpp
CMakeFiles/indelmap.dir/indelmap.cpp.o: CMakeFiles/indelmap.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/indelmap.dir/indelmap.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/indelmap.dir/indelmap.cpp.o -MF CMakeFiles/indelmap.dir/indelmap.cpp.o.d -o CMakeFiles/indelmap.dir/indelmap.cpp.o -c /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indelmap.cpp

CMakeFiles/indelmap.dir/indelmap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/indelmap.dir/indelmap.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indelmap.cpp > CMakeFiles/indelmap.dir/indelmap.cpp.i

CMakeFiles/indelmap.dir/indelmap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/indelmap.dir/indelmap.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/indelmap.cpp -o CMakeFiles/indelmap.dir/indelmap.cpp.s

# Object files for target indelmap
indelmap_OBJECTS = \
"CMakeFiles/indelmap.dir/indel.cpp.o" \
"CMakeFiles/indelmap.dir/oligo.cpp.o" \
"CMakeFiles/indelmap.dir/readmap.cpp.o" \
"CMakeFiles/indelmap.dir/gen.cpp.o" \
"CMakeFiles/indelmap.dir/indelmap.cpp.o"

# External object files for target indelmap
indelmap_EXTERNAL_OBJECTS =

indelmap: CMakeFiles/indelmap.dir/indel.cpp.o
indelmap: CMakeFiles/indelmap.dir/oligo.cpp.o
indelmap: CMakeFiles/indelmap.dir/readmap.cpp.o
indelmap: CMakeFiles/indelmap.dir/gen.cpp.o
indelmap: CMakeFiles/indelmap.dir/indelmap.cpp.o
indelmap: CMakeFiles/indelmap.dir/build.make
indelmap: CMakeFiles/indelmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable indelmap"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/indelmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/indelmap.dir/build: indelmap
.PHONY : CMakeFiles/indelmap.dir/build

CMakeFiles/indelmap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/indelmap.dir/cmake_clean.cmake
.PHONY : CMakeFiles/indelmap.dir/clean

CMakeFiles/indelmap.dir/depend:
	cd /home/wergillius/Project/SelfTarget/indel_analysis/indelmap && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap /home/wergillius/Project/SelfTarget/indel_analysis/indelmap/CMakeFiles/indelmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/indelmap.dir/depend

