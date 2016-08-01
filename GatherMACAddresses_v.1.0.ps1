<# Gather MAC Addresses

You may need to modify the scripts -Path to reflect where the text file containing 
the computer name is located.

Authored by James Willis
#>

Get-Content -Path c:\tools\ADComputerName.txt | Get-CimInstance -ClassName win32_networkadapterconfiguration | 
Select-Object PSComputerName, Description, MACAddress | Format-Table -AutoSize | Out-File -FilePath C:\tools\macaddress.csv
