$packageName = 'sonyvegaspro'
$installerType = 'EXE'
$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro12.0.770.exe?e=1385862931&h=7c23bc67d5c71fa8f530cd9a769eb2fb&file=.exe'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes