$packageName = 'webpi'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/8/C/5/8C5EEDC7-3D72-4BB6-A55E-37F3977CD892/wpilauncher.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes