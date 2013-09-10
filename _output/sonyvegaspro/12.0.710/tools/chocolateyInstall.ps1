$packageName = 'sonyvegaspro'
$installerType = 'EXE'
#$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro12.0.670.exe?e=1376728983&h=7e7551645eba44f8b4220cf716f29eeb&file=.exe'
$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro12.0.710.exe?e=1378872137&h=718902718e2c72964c269fded4f222de&file=.exe'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes