$packageName = 'onedrive'
$installerType = 'EXE'
$url = 'http://wl.dlservice.microsoft.com/download/3/7/9/379B6693-4308-449C-8556-AB1494F184AF/OneDriveSetup.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes