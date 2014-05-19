@echo off

rem ####install chocolatey wxp
rem ####v.2014.04.22 alpha 02:00 GMT+1

@powershell Write-Host "Installing Chocolatey, ChocolateyGUI and Nuget Package Explorer... Please wait"
@powershell Start-Sleep -s 3 
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
@powershell Write-Host "All the processes has been realized. Enjoy it!"
cinst ChocolateyGUI
rem cinst ChocoPM.install -Pre
pause