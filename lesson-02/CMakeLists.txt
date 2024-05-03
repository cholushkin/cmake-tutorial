# Set the minimum required version of CMake to be 3.10
cmake_minimum_required(VERSION 3.10)

# Create a project named SampleGame, it also sets the variable PROJECT_NAME
# Provide optional description and version
project(SampleGame DESCRIPTION "Example c++ game" VERSION 0.1)

# Configure SOURCE_LIST to hold the sources
set(SOURCE_LIST
    sources/main.cpp
    sources/gui/gui.cpp
    sources/game/input/input.cpp
    sources/game/render/render.cpp
    sources/main.h
    sources/gui/gui.h
    sources/game/input/input.h
    sources/game/render/render.h
)
set(CMAKE_SUPPRESS_REGENERATION true)

# Add an executable called SampleGame to the project
add_executable(${PROJECT_NAME} ${SOURCE_LIST})

# Create the source groups for source tree with root at CMAKE_CURRENT_SOURCE_DIR.
source_group(TREE ${CMAKE_CURRENT_SOURCE_DIR} FILES ${SOURCE_LIST})

# Add your include directory
include_directories(
 sources/gui
 sources/game/input
 sources/game/render
)


# Print configuration message
message(STATUS "Configuring ${PROJECT_NAME} (${PROJECT_DESCRIPTION}) v.${PROJECT_VERSION}")