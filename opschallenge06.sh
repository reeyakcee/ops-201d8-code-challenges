#!/bin/bash

# Script Name:                  opschallenge05
# Author:                       Reeya Karki
# Date of latest revision:      04/29/2023
# Purpose:                      create a script to test if a situation is true.
# Declaration of variables
# Declaration of functions

 Array containing file and directory paths to check and create if necessary
paths=("/path/to/dir1" "/path/to/dir2" "/path/to/file.txt")

# Loop through each path in the array
for path in "${paths[@]}"
do
  # Check if the file or directory already exists
  if [ ! -e "$path" ]; then
    # If it doesn't exist, create it
    echo "Creating $path"
    mkdir -p "$(dirname "$path")" && touch "$path"
  else
    echo "$path already exists"
  fi
done

# End
