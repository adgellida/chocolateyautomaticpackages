@echo off

rem #### install chocolatey - http://community.spiceworks.com/scripts/show/2602-chocolatey-nuget-install-command-line-method
rem #### All Windows versions support commenting a line and uncommenting another.
rem #### Next automatic selection support.
rem #### v.2014.10.19 alpha 16:25 GMT+1

@powershell Write-Host "Installing Chocolatey and Nuget Package Explorer... Please wait"
@powershell Start-Sleep -s 3

rem #### for Windows Vista and upper (7, 8, 8.1, etc) 
@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

rem #### for Windows XP
rem @powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('http://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%systemdrive%\chocolatey\bin

@powershell Write-Host "All the processes has been realized. Enjoy it!"
rem cinst ChocolateyGUI
rem cinst OuiGuiChocolatey
rem cinst ChocoPM.install -Pre
pause