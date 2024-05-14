# Set the minimum required version of CMake
cmake_minimum_required(VERSION 3.10)

# Define the project and its description
project(MyOpenGLProject DESCRIPTION "Example C++ game")

# Suppress regeneration to avoid unnecessary project regeneration in Visual Studio
set(CMAKE_SUPPRESS_REGENERATION true)

# Include directories for your source files, GLFW, and glad
include_directories(sources)
include_directories(third-party/glfw/include)
include_directories(third-party/glad/include)

# Add glad as a source
set(GLAD_SOURCE_DIR third-party/glad)
file(GLOB_RECURSE GLAD_SOURCE "${GLAD_SOURCE_DIR}/*.c"  "${GLAD_SOURCE_DIR}/*.h")

# Add glfw as source (only for headers)
set(GLFW_SOURCE_DIR third-party/glfw)
file(GLOB_RECURSE GLFW_SOURCE "${GLFW_SOURCE_DIR}/*.h")

# Link GLFW library
link_directories(third-party/glfw/lib-vc2022)

# Add your executable
add_executable(${PROJECT_NAME} ${GLAD_SOURCE} ${GLFW_SOURCE} sources/main.cpp)

# Group source files in the project structure of the IDE
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${GLAD_SOURCE} ${GLFW_SOURCE} sources/main.cpp)

# Link GLFW library to the executable
target_link_libraries(${PROJECT_NAME} glfw3_mt)

# Set the startup project in Visual Studio
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME})
