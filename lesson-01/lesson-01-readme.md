# Introduction to CMakeLists.txt
The CMakeLists.txt file serves as the foundational configuration for a CMake project. It contains commands and settings that CMake uses to generate build systems in a platform- and compiler-independent manner.

## Running Your CMake Project
To facilitate the build process, we provide two PowerShell scripts:

* run-cmake.ps1 - Executes the default project configuration and generates build solutions. These solutions are placed within the **Generated** directory. Simply run: `./run-cmake.ps1`
This script initializes the project setup by creating necessary build files and directories.

* run-cmake-build.ps1 - Compiles the source files into an executable. It targets the files located in the **Generated** directory.

## Key CMake Commands to Explore
In this lesson, we will focus on three essential CMake commands that are critical for basic project setup:

- `project()` - Specifies the name and version of the project, and optionally sets the programming languages used. It is fundamental for any CMake project as it initiates project configuration.
- `cmake_minimum_required()` - Ensures that a certain minimum version of CMake is used. This is crucial for compatibility and to prevent potential issues with newer CMake features that might not be supported in older versions.
- `add_executable()` - Defines an executable target by specifying the resulting executable name and the source files required to build it. This command is used to compile the source files into an executable binary.
By understanding and using these commands, you can effectively configure and build a simple CMake project.