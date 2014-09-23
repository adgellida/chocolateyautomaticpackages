$packageName = 'spideroak'
$installerType = 'EXE'
$url = 'https://spideroak.com/getbuild?platform=win'
$url64 = 'https://spideroak.com/getbuild?platform=win'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes