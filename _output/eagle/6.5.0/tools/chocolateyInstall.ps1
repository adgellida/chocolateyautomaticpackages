$packageName = 'eagle'
$installerType = 'EXE'
$url = 'ftp://ftp.cadsoft.de/eagle/program/6.5/eagle-win-6.5.0.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes