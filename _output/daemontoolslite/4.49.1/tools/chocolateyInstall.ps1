$packageName = 'daemontoolslite'
$installerType = 'EXE'
$url = 'http://tonigellida.x10.mx/owncloud/public.php?service=files&t=c895bad8c4313085244f6bd3324fa4ce&download'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes