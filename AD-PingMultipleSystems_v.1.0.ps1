<# Gather IP Addresses
You may need to modify the scripts -Path to reflect where the text file containing 
the computer names is located.

Authored by James Willis
#>

Test-Connection -ComputerName (Get-Content -Path c:\tools\ADComputerName.txt) -Count 1 | 
Format-Table -AutoSize | Out-File -FilePath c:\tools\PingResults.csv
