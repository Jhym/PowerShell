#Searching for multiple computers in Active Directory
#
#You may need to modify the script's Path search to reflect where the text file
#with the computer names is located.
#
#Currently the script looks for a folder labeled Tools in the root of C:
#C:\Tools\ADComputerName.txt
#
#Authored by James Willis

Get-Content -Path c:\tools\ADComputerName.txt | Get-ADComputer -Properties * | Format-Table 
-Property CN, LastLogonDate, DistinguishedName, Enabled -wrap
