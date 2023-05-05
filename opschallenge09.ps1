#Script Name :                         Challenge-09
#Author:                               Reeya Karki
#Date of latest revision:              05/05/2023
#Purpose:                              Log Retreival via Powershell

#Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
Get-EventLog -Logname System -After (Get-Date).AddDays(-1) | Out-File -Filepath .\Desktop\last_24.txt

#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
Get-EventLog -logName System -EntryType Error | Out-File -Filepath\Desktop\errors.txt

#Print to the screen all events with ID of 16 from the System event log.
Get-EventLog -Logname System -InstanceId 16

#Print to the screen the most recent 20 entries from the System event log.
Get-EventLog -LogName System -Newest 20

#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).
Get-EventLog -Logname System -Newest 500 | Format-Table -AutoSize -wrap

#End