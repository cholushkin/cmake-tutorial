# CMake Installation Guide

This README provides instructions on how to install CMake and ensure it can be called from the command line by adding it to the system PATH.

## Step 1: Install CMake

To install CMake, follow these steps:

1. Visit the CMake official website at [CMake Downloads](https://cmake.org/download/).
2. Download the latest version of CMake suitable for your operating system.
3. Follow the installation instructions specific to your platform.

## Step 2: Add CMake to the System PATH

To ensure that you can call `cmake` from the command line, you need to add it to your system PATH. Here are the instructions to do this on Windows:

1. After installation, locate the directory where CMake was installed. This is usually `C:\Program Files\CMake\bin`.
2. Copy the path to the clipboard.
3. Open the Start Search, type `env`, and select **Edit the system environment variables**.
4. In the System Properties window, click on the **Environment Variables** button.
5. Under System variables, find and select `Path`, then click on **Edit**.
6. In the Edit Environment Variable window, click **New** and paste the path you copied earlier.
7. Click **OK** to close all dialog boxes and apply the changes.

Alternatively, you can execute the add-cmake-to-path.ps1 script in PowerShell with administrative privileges.


# Verification
To verify that CMake has been successfully added to your PATH, open a new terminal or command prompt and type:

cmake --version
This command should display the CMake version if it was correctly added to the PATH.


