#!/bin/bash

# Script Name:                  opschallenge10
# Author:                       Reeya Karki
# Date of latest revision:      05/08/2023
# Purpose:                      System Process Commands 

#Declaration of Variables

#Declaration of Functions

#Main

#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property CPU -Descending

#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property Id -Descending

#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property WorkingSet -Decscending | Select-Object -First 5

#Start a browser process (such as Google Chrome or MS Edge) and have it open 
$browser = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$website = "https://owasp.org/www-project-top-ten/"
Start-Process -Filepath $browser -ArgumentList $website


#Start the process Notepad ten times using a for loop.
for ($i = 1 ; $i -le 10 ; $i++)
{
     Start-Process Notepad

#Close all instances of the Notepad.
Stop-Process -Name Notepad

#Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
Get-Process
$var = Read-Host "Enter a PID you want to kill: "
Stop-Process -Id $var

#End
