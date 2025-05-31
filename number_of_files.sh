#!/bin/sh

# Check if an argument was passed
if [ $# -eq 0 ]; then
  echo "Usage: $0 <absolute_path_to_directory>"
  exit 1
fi

# Expand ~ to full path if needed
DIR=$(eval echo "$1")

echo "DEBUG: DIR = '$DIR'"

# Check if it is a directory
if [ -d "$DIR" ]; then
  echo "✔ '$DIR' is a valid directory"
  count=$(find "$DIR" -maxdepth 1 -type f 2>/dev/null | wc -l)
  echo "There are $count file(s) in directory '$DIR'."
else
  echo "✘ '$DIR' is NOT a valid directory."
fi
