#!/bin/bash

echo "Starting mpy-cross distribution script..."

# Define the source file path
srcFile="$1"

# Remove leading "./" from the path
srcFile="${srcFile#./}"

# Replace "src/" with "dist/" in the destination file path
destFile="${srcFile/src\//dist/}"
destFile="${destFile//\/src\//\/dist\/}"

# Change the file extension to ".mpy"
destFile="${destFile%.py}.mpy"

# Ensure the destination directory exists
destDir=$(dirname "$destFile")
if [ ! -d "$destDir" ]; then
    mkdir -p "$destDir"
fi

echo "Compiling $srcFile to $destFile"
mpy-cross "$srcFile" -o "$destFile"
