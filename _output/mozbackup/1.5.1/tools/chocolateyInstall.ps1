$packageName = 'mozbackup'
$installerType = 'EXE'
$url = 'http://kent.dl.sourceforge.net/project/mozbackup/MozBackup/1.5.1/MozBackup-1.5.1-EN.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes