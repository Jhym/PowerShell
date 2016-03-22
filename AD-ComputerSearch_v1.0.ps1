#SEARCHING FOR MULTIPLE COMPUTERS OBJECTS IN ACTIVE DIRECTORY
#
# Use this script to search for multiple computers objects in Active Directory.
#
#You may need to modify the script's Path search to reflect where the text file
#with computer names is located.
#
#Currently the script looks for a folder labeled Tools in the root of C:
#C:\Tools\ADComputerName.txt
#
#Authored by James Willis
Get-Content -Path C:\Tools\ADComputerName.txt | Get-ADComputer