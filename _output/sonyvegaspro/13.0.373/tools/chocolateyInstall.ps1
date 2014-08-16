$packageName = 'sonyvegaspro'
$installerType = 'EXE'
$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro13.0.373_64bit.exe?e=1408243768&h=82e4c9222a3d3dd683243dfeebda9b07&file=.exe'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes