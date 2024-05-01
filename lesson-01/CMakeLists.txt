# Set the minimum required version of CMake to be 3.10
cmake_minimum_required(VERSION 3.10)

# Create a project named Tutorial
# Provide optional descrition
project(Tutorial DESCRIPTION "Example c++ program")

# TODO 3: Add an executable called Tutorial to the project
# Hint: Be sure to specify the source file as tutorial.cxx
add_executable(Tutorial tutorial.cpp)

# Print configuration message
message(STATUS "Configuring ${PROJECT_NAME} ${PROJECT_DESCRIPTION}")