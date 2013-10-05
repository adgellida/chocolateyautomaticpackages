$packageName = 'sonyvegaspro'
$installerType = 'EXE'
$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro12.0.726.exe?e=1380931549&h=fdc3a400de1a9ed09c9eea71a913089a&file=.exe'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes