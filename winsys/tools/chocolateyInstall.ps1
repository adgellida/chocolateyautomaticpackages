$packageName = 'winsys'
$installerType = 'EXE'
$silentArgs = '--mode unattended'
$url = 'https://github.com/adgellida/winsys/releases/download/v2017.06.16/winsys-2017.06.16-windows-installer.exe'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes