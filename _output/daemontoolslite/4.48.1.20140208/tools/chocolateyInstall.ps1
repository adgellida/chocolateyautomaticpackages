$packageName = 'daemontoolslite'
$installerType = 'EXE'
$url = 'http://tonigellida.x10.mx/owncloud/public.php?service=files&t=c52c4a68a126fbe043597933f70f4e71&download'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes