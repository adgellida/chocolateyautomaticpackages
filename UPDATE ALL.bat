@echo off

rem ####update all
rem ####v.2013.05.30 alpha 16:05 GMT+1

@powershell Write-Host "Updating all the packages... Please wait"
cup all
@powershell Write-Host "All the processes have been realized. Enjoy it!"
cmd /C pause