# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\build

# Utility rule file for update_mappings.

# Include any custom commands dependencies for this target.
include libs/glfw/src/CMakeFiles/update_mappings.dir/compiler_depend.make

# Include the progress variables for this target.
include libs/glfw/src/CMakeFiles/update_mappings.dir/progress.make

libs/glfw/src/CMakeFiles/update_mappings:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating gamepad mappings from upstream repository"
	cd /d C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\libs\glfw\src && "C:\Program Files\CMake\bin\cmake.exe" -P C:/Users/dylan/Desktop/Projects/Cpp/OpenGL-MultiColorTriangle/libs/glfw/CMake/GenerateMappings.cmake mappings.h.in mappings.h

update_mappings: libs/glfw/src/CMakeFiles/update_mappings
update_mappings: libs/glfw/src/CMakeFiles/update_mappings.dir/build.make
.PHONY : update_mappings

# Rule to build all files generated by this target.
libs/glfw/src/CMakeFiles/update_mappings.dir/build: update_mappings
.PHONY : libs/glfw/src/CMakeFiles/update_mappings.dir/build

libs/glfw/src/CMakeFiles/update_mappings.dir/clean:
	cd /d C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\build\libs\glfw\src && $(CMAKE_COMMAND) -P CMakeFiles\update_mappings.dir\cmake_clean.cmake
.PHONY : libs/glfw/src/CMakeFiles/update_mappings.dir/clean

libs/glfw/src/CMakeFiles/update_mappings.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\libs\glfw\src C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\build C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\build\libs\glfw\src C:\Users\dylan\Desktop\Projects\Cpp\OpenGL-MultiColorTriangle\build\libs\glfw\src\CMakeFiles\update_mappings.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : libs/glfw/src/CMakeFiles/update_mappings.dir/depend

