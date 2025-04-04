#!/bin/bash
echo "Enter file/directory to compress:"
read -r source

# Convert Windows paths if needed
source="${source//\\//}"  # Replace all backslashes

# Create archive in current directory
if tar -czf "${source##*/}.tar.gz" "$source"; then
    echo "Compressed to ${source##*/}.tar.gz"
else
    echo "Compression failed" >&2
fi
