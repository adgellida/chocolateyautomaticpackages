$packageName = 'bleachbit'
$installerType = 'EXE'
$url = 'http://optimate.dl.sourceforge.net/project/bleachbit/bleachbit/1.0/BleachBit-1.0-setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes