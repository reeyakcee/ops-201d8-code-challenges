#!/bin/bash

# Script Name:                  opschallenge04
# Author:                       Reeya Karki
# Date of latest revision:      04/29/2023
# Purpose:                      Create directories, Load array and create a new.txt file 

# Declaration of variables

# Declaration of functions


# Main



# End

Create four directories using the script.

mkdir dir1
mkdir dir2
mkdir dir3
mkdir dir4

Load each directory path into an array.
dirArray=(dir1 dir2 dir3 dir4)

create a new .txt file within each directory by reference
touch "${dirArray[0]}/test.txt"
touch "${dirArray[1]}/test.txt"
touch "${dirArray[2]}/test.txt"
touch "${dirArray[3]}/test.txt"
