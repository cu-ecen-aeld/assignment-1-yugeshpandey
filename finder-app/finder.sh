#!/bin/sh

# Check if the parameters provided were specified
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <filesdir> <searchstr>"
	exit 1
fi

# Assign the arguments to variables
filesdir=$1
searchstr=$2

# Check if the directory exists
if [ ! -d "$filesdir" ]; then
	echo "Directory $filesdir does not exist."
	exit 1
fi

# Count the number of files
num_files=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines
num_matches=$(grep -r -o "$searchstr" "$filesdir" | wc -l)

# Print results
echo "The number of files are $num_files and the number of matching lines are $num_matches"

