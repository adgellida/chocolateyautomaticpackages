@echo off

rem ####update all
rem ####v.2014.01.28 alpha 23:22 GMT+1

@powershell Write-Host "Updating all the stable packages... Please wait"
cup all
@powershell Write-Host "All the processes have been realized. Enjoy it!"
cmd /C pause