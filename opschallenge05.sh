#!/bin/bash

# Script Name:                  opschallenge05
# Author:                       Reeya Karki
# Date of latest revision:      04/29/2023
# Purpose:                      Displays running process
                                # Asks the user for a PID
                                # Kills the process with that PID
                                # Starts over at step 1 and continues until the user exits with Ctrl + C

# Declaration of variables

# Declaration of functions
killfunction(){
    while true;
    do 
    ps aux;
    echo "Enter the PID of the process you want to kill: "
    read pid
    kill $pid 
   done
}

# Main 
killfunction 






#End


