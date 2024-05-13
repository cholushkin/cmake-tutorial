cmake_minimum_required(VERSION 3.10)
project(MyOpenGLProject DESCRIPTION "Example c++ game")
set(CMAKE_SUPPRESS_REGENERATION true)
include_directories(sources)

# Include directories for your source files, GLFW, and glad
include_directories(sources)
include_directories(third-party/glfw/include)
include_directories(third-party/glad/include)

# Add glad as a subdirectory and compile its source files into a library
#add_library(glad STATIC third-party/glad/src/glad.c)

file(GLOB GLAD_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/third-party/glad/src/*.c")



# Link GLFW library
link_directories(third-party/glfw/lib-vc2022)

# Add your executable and link libraries
add_executable(${PROJECT_NAME} sources/main.cpp ${GLAD_SOURCES})
target_link_libraries(${PROJECT_NAME} glfw3_mt)

# Set startup project
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${PROJECT_NAME})