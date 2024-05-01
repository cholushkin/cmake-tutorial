# Set the minimum required version of CMake to be 3.10
cmake_minimum_required(VERSION 3.10)

# Create a project named Tutorial
# Provide optional description
project(Tutorial DESCRIPTION "Example c++ program")

# Add an executable called Tutorial to the project
add_executable(Tutorial tutorial.cpp)

# Print configuration message
message(STATUS "Configuring ${PROJECT_NAME} ${PROJECT_DESCRIPTION}")