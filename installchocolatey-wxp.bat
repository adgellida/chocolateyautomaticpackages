@echo off

rem ####install chocolatey wxp
rem ####v.2014.01.28 alpha 23:22 GMT+1

@powershell Write-Host "Installing Chocolatey, ChocolateyGUI and Nuget Package Explorer... Please wait"
@powershell Start-Sleep -s 3 
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin
@powershell Write-Host "All the processes has been realized. Enjoy it!"
rem cinst ChocolateyGUI
cinst ChocoPM.install -Pre
pause