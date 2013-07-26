$packageName = 'bleachbit'
$installerType = 'EXE'
#$url = 'http://katana.oooninja.com/bleachbit/{version}final/download.php'
$url = 'http://katana.oooninja.com/bleachbit/0.9.6final/download.php'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes