#Script Name :                              Challenge-12
#Author:                                    Reeya Karki
#Date of latest revision:                   05/10/2023
#Purpose:                                   Powershell IP Analysis

#Create a Powershell script that performs the following operations:

#Declare variables

#Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
ipconfig /all | Out-File -Filepath $home\Desktop\network_report.txt

#Use Select-String to search network_report.txt and return only the IP version 4 address.
Select-String -Path $home\Desktop\network_report.txt -Pattern 'IPV4'

#Remove the network_report.txt when you are finished searching it.
Remove-Item -Path $home\Desktop\network_report.txt -Force
