$packageName = 'startisback'
$installerType = 'EXE'
#$url = 'http://www.startisback.com/StartIsBack_setup.exe'
$url = 'http://www.startisback.com/StartIsBack_setup.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes