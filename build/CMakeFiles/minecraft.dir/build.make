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
CMAKE_SOURCE_DIR = C:\Users\dylan\Desktop\Projects\Cpp\minecraft

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build

# Include any dependencies generated for this target.
include CMakeFiles/minecraft.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/minecraft.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/minecraft.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/minecraft.dir/flags.make

CMakeFiles/minecraft.dir/src/main.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/main.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/main.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/main.cpp
CMakeFiles/minecraft.dir/src/main.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/minecraft.dir/src/main.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/main.cpp.obj -MF CMakeFiles\minecraft.dir\src\main.cpp.obj.d -o CMakeFiles\minecraft.dir\src\main.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\main.cpp

CMakeFiles/minecraft.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\main.cpp > CMakeFiles\minecraft.dir\src\main.cpp.i

CMakeFiles/minecraft.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\main.cpp -o CMakeFiles\minecraft.dir\src\main.cpp.s

CMakeFiles/minecraft.dir/src/EBO.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/EBO.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/EBO.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/EBO.cpp
CMakeFiles/minecraft.dir/src/EBO.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/minecraft.dir/src/EBO.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/EBO.cpp.obj -MF CMakeFiles\minecraft.dir\src\EBO.cpp.obj.d -o CMakeFiles\minecraft.dir\src\EBO.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\EBO.cpp

CMakeFiles/minecraft.dir/src/EBO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/EBO.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\EBO.cpp > CMakeFiles\minecraft.dir\src\EBO.cpp.i

CMakeFiles/minecraft.dir/src/EBO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/EBO.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\EBO.cpp -o CMakeFiles\minecraft.dir\src\EBO.cpp.s

CMakeFiles/minecraft.dir/src/shader.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/shader.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/shader.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/shader.cpp
CMakeFiles/minecraft.dir/src/shader.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/minecraft.dir/src/shader.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/shader.cpp.obj -MF CMakeFiles\minecraft.dir\src\shader.cpp.obj.d -o CMakeFiles\minecraft.dir\src\shader.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\shader.cpp

CMakeFiles/minecraft.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/shader.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\shader.cpp > CMakeFiles\minecraft.dir\src\shader.cpp.i

CMakeFiles/minecraft.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/shader.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\shader.cpp -o CMakeFiles\minecraft.dir\src\shader.cpp.s

CMakeFiles/minecraft.dir/src/VAO.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/VAO.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/VAO.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/VAO.cpp
CMakeFiles/minecraft.dir/src/VAO.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/minecraft.dir/src/VAO.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/VAO.cpp.obj -MF CMakeFiles\minecraft.dir\src\VAO.cpp.obj.d -o CMakeFiles\minecraft.dir\src\VAO.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\VAO.cpp

CMakeFiles/minecraft.dir/src/VAO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/VAO.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\VAO.cpp > CMakeFiles\minecraft.dir\src\VAO.cpp.i

CMakeFiles/minecraft.dir/src/VAO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/VAO.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\VAO.cpp -o CMakeFiles\minecraft.dir\src\VAO.cpp.s

CMakeFiles/minecraft.dir/src/VBO.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/VBO.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/VBO.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/VBO.cpp
CMakeFiles/minecraft.dir/src/VBO.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/minecraft.dir/src/VBO.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/VBO.cpp.obj -MF CMakeFiles\minecraft.dir\src\VBO.cpp.obj.d -o CMakeFiles\minecraft.dir\src\VBO.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\VBO.cpp

CMakeFiles/minecraft.dir/src/VBO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/VBO.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\VBO.cpp > CMakeFiles\minecraft.dir\src\VBO.cpp.i

CMakeFiles/minecraft.dir/src/VBO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/VBO.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\VBO.cpp -o CMakeFiles\minecraft.dir\src\VBO.cpp.s

CMakeFiles/minecraft.dir/src/renderer.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/renderer.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/renderer.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/renderer.cpp
CMakeFiles/minecraft.dir/src/renderer.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/minecraft.dir/src/renderer.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/renderer.cpp.obj -MF CMakeFiles\minecraft.dir\src\renderer.cpp.obj.d -o CMakeFiles\minecraft.dir\src\renderer.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\renderer.cpp

CMakeFiles/minecraft.dir/src/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/renderer.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\renderer.cpp > CMakeFiles\minecraft.dir\src\renderer.cpp.i

CMakeFiles/minecraft.dir/src/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/renderer.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\renderer.cpp -o CMakeFiles\minecraft.dir\src\renderer.cpp.s

CMakeFiles/minecraft.dir/src/texture.cpp.obj: CMakeFiles/minecraft.dir/flags.make
CMakeFiles/minecraft.dir/src/texture.cpp.obj: CMakeFiles/minecraft.dir/includes_CXX.rsp
CMakeFiles/minecraft.dir/src/texture.cpp.obj: C:/Users/dylan/Desktop/Projects/Cpp/minecraft/src/texture.cpp
CMakeFiles/minecraft.dir/src/texture.cpp.obj: CMakeFiles/minecraft.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/minecraft.dir/src/texture.cpp.obj"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/minecraft.dir/src/texture.cpp.obj -MF CMakeFiles\minecraft.dir\src\texture.cpp.obj.d -o CMakeFiles\minecraft.dir\src\texture.cpp.obj -c C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\texture.cpp

CMakeFiles/minecraft.dir/src/texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minecraft.dir/src/texture.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\texture.cpp > CMakeFiles\minecraft.dir\src\texture.cpp.i

CMakeFiles/minecraft.dir/src/texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minecraft.dir/src/texture.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\dylan\Desktop\Projects\Cpp\minecraft\src\texture.cpp -o CMakeFiles\minecraft.dir\src\texture.cpp.s

# Object files for target minecraft
minecraft_OBJECTS = \
"CMakeFiles/minecraft.dir/src/main.cpp.obj" \
"CMakeFiles/minecraft.dir/src/EBO.cpp.obj" \
"CMakeFiles/minecraft.dir/src/shader.cpp.obj" \
"CMakeFiles/minecraft.dir/src/VAO.cpp.obj" \
"CMakeFiles/minecraft.dir/src/VBO.cpp.obj" \
"CMakeFiles/minecraft.dir/src/renderer.cpp.obj" \
"CMakeFiles/minecraft.dir/src/texture.cpp.obj"

# External object files for target minecraft
minecraft_EXTERNAL_OBJECTS =

minecraft.exe: CMakeFiles/minecraft.dir/src/main.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/src/EBO.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/src/shader.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/src/VAO.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/src/VBO.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/src/renderer.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/src/texture.cpp.obj
minecraft.exe: CMakeFiles/minecraft.dir/build.make
minecraft.exe: libimgui.a
minecraft.exe: libglad.a
minecraft.exe: glfw-binaries/src/libglfw3.a
minecraft.exe: CMakeFiles/minecraft.dir/linkLibs.rsp
minecraft.exe: CMakeFiles/minecraft.dir/objects1.rsp
minecraft.exe: CMakeFiles/minecraft.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable minecraft.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\minecraft.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/minecraft.dir/build: minecraft.exe
.PHONY : CMakeFiles/minecraft.dir/build

CMakeFiles/minecraft.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\minecraft.dir\cmake_clean.cmake
.PHONY : CMakeFiles/minecraft.dir/clean

CMakeFiles/minecraft.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\dylan\Desktop\Projects\Cpp\minecraft C:\Users\dylan\Desktop\Projects\Cpp\minecraft C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build C:\Users\dylan\Desktop\Projects\Cpp\minecraft\build\CMakeFiles\minecraft.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/minecraft.dir/depend

