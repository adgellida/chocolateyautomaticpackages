$packageName = 'eagle'
$installerType = 'EXE'
$url = 'http://web.cadsoft.de/ftp/eagle/program/7.1/eagle-win-7.1.0.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes