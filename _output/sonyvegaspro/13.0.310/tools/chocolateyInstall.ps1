$packageName = 'sonyvegaspro'
$installerType = 'EXE'
$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro13.0.310_64bit.exe?e=1398996915&h=8a63b4d5a0e16761ea33ad32ddc4c5e2&file=.exe'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes