function SplitPath {
    param (
        [string]$PathString
    )
    
    # Create an array to store the path entries
    $PathEntries = @()

    # Split the PATH string into individual entries
    $PathEntries = $PathString -split ';'
    
    # Return the array of path entries
    return $PathEntries
}


# Get the current system PATH
$Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')

# Specify the CMake installation directory (change this path to your actual CMake directory)
$CMakePath = "c:\Program Files\CMake\bin"

# Check if the CMake path is already in the PATH variable
if ($Path -notlike "*$CMakePath*") {
    # Check if cmake.exe exists in the specified directory
    if (Test-Path -Path "$CMakePath\cmake.exe") {
        # If cmake.exe is present and the path is not already in the PATH, append it
        $NewPath = $Path + ";" + $CMakePath
        # Update the system PATH environment variable
        [System.Environment]::SetEnvironmentVariable('Path', $NewPath, 'Machine')
        Write-Host "CMake path added to the system PATH."
    } else {
        # If cmake.exe is not found, output a warning
        Write-Host "The specified CMake path does not contain cmake.exe. Please check the path and try again."
    }
} else {
    # If the path is already in the PATH, do nothing
    Write-Host "CMake path is already in the system PATH."
}

# Print the current/new system PATH
Write-Host "Current system PATH:"

# Reload the PATH variable from the environment to reflect the change in the current session
#$env:Path = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')

$CurrentPath = [System.Environment]::GetEnvironmentVariable('Path', 'Machine')
$PathArray = SplitPath -PathString $CurrentPath
foreach ($Path in $PathArray) {
    Write-Host $Path
}