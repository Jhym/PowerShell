#REMOVING MULTIPLE COMPUTERS FROM ACTIVE DIRECTORY
#
# Use this script to remove multiple computers from Active Directory.
#
#You may need to modify the script's Path search to reflect where the text file
#with computer names is located.
#
#Currently the script looks for a folder labeled Tools in the root of C:
#C:\Tools\ADComputerName.txt
#
#You will be prompted on if you wish to delete the AD objects.
#
#Authored by James Willis
Get-Content -Path C:\Tools\ADComputerName.txt | Get-ADComputer | Remove-ADComputer