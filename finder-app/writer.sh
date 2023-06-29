#!/bin/sh

# Check if the number of arguments were not specified
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <writefile> <writestr>"
	exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it does not exist
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

# Create the file and write the string from the argument to it
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ ! -f "$writefile" ]; then
	echo "Error: File $writefile could not be created."
	exit 1
fi
