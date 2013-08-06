@echo off

rem ####uninstall chocolatey
rem ####v.2013.05.30 alpha 16:05 GMT+1

@powershell Write-Host "Uninstalling Chocolatey... Please wait"
@powershell Start-Sleep -s 3 
@powershell -NoProfile -ExecutionPolicy unrestricted -Command Remove-Item "C:\Chocolatey" -recurse
@powershell Write-Host "Chocolatey uninstalled"
pause