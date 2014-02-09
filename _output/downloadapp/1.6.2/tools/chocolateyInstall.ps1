$packageName = 'downloadapp'
$installerType = 'EXE'
$url = 'http://tonigellida.x10.mx/owncloud/public.php?service=files&t=15ff7a94a2e20a0e7956b22736089237&download'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes