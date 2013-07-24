$packageName = 'kicad'
$installerType = 'EXE'
$url = 'http://iut-tice.ujf-grenoble.fr/cao/KiCad_stable-2013.05.31-BZR4019_Win_full_version.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes