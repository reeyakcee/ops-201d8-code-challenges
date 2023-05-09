#Script Name :                          Challenge-11
#Author:                                Reeya Karki
#Date of latest revision:               05/09/2023
#Purpose:                               Automate Configuration of new windows 10 endpoint


#Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True

#Allow ICMP traffic
New-NetFireWallRule -Displayname "Allow ICMPv$-In" -Protocol ICMPv4 -IcmpType8 -Enabled True

#Enable Remote management
Enable-PSRemoting -Force

#Removes Bloatware
Get-AppxPackage | Where-Object {$_.IsFramework -eq $false} | Remove-AppxPackage

#Enable Hyper-V
Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

#Disable SMBv1, an insecure protocol
Set-SmbServerConfiguration  -EnableSMB1Protocol $false


#End
