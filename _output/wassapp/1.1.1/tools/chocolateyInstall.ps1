$packageName = 'wassapp'
$installerType = 'EXE'
#$url = 'http://lowlevel-studios.com/apps/wassapp/Wassapp_{version}.exe'
$url = 'http://lowlevel-studios.com/apps/wassapp/Wassapp_1.1.1.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes