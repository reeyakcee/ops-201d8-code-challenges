#!/bin/bash

# Script Name:                  Opschallenge-07
# Author:                       Reeya Karki
# Date of latest revision:      05/06/2023
# Purpose:                      Practice lshw and grep

# Declaration of variables

# Declaration of functions


# Main

#Create a script that…

#Uses lshw to display system information to the screen about the following components

#Name of the computer
echo hostname

#CPU
   #Product-Vendor-Physical ID-Bus info-Width
   #Uses grep to remove irrelevant information from the lshw output
   echo "CPU"
   sudo lshw | grep *-cpu -A 6 | grep -vw "version"

#RAM
   #Description-Physical ID-Size
   sudo lshw -c memory | grep memory -A 3

#Display adapter
   #Description-Product-Vendor-Physical ID-Bus info
   sudo lshw | grep *-display -A 5
   #Clock-Capabilities-Configuration-Resources
   sudo lshw | grep *-display -A 12 | head -12 | tail -4

#Network Adapter
   #Description-Product-Vendor-Physical ID-Bus info-Logical name-Version-Serial-Size-Capacity
   #Width-Clock-Capabilities
   echo "Network Adapter"    
   sudo lshw | grep *-network -A 15

#Add text to the output clearly indicating which component (such as CPU, RAM, etc.) the script is returning information about

#Runs as Root; you may execute the shell script with sudo or as Root

#End



