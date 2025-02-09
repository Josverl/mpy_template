# Define the source and destination file paths
param (
    [string]$srcFile 
)

# remove leading ".\" from the path
$srcFile = $srcFile -replace '^\.\\', ''
$destFile = $srcFile -replace '^src\\', 'dist\'
$destFile = $destFile-replace '\\src\\', '\dist\'

$destFile = [System.IO.Path]::ChangeExtension($destFile, ".mpy")
# Ensure the destination directory exists
$destDir = Split-Path -Path $destFile
if (-not (Test-Path -Path $destDir)) {
    New-Item -ItemType Directory -Path $destDir | Out-Null
}

echo "Compiling $srcFile to $destFile"
mpy-cross $srcFile -o $destFile

