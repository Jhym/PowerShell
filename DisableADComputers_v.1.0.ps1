<# DISABLING MULTIPLE COMPUTERS IN ACTIVE DIRECTORY

Use this script to disable multiple computer accounts within Active Directory.

You may need to modify the script's -PATH to reflect where the text file containing the
computer names is located.

You will also need to enter the current date and tech responsible for disabling the accounts.
#>
Import-Module ActiveDirectory
Get-Content -Path C:\Tools\SystemsToDisable.csv | Set-ADComputer -Description "Account 
disabled on <ENTER DATE> by <TECH>." -Enabled 0
