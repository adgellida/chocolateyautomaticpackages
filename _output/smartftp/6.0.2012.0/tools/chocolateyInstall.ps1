$packageName = 'smartftp'
$installerType = 'msi'
$url = 'http://www.smartftp.com/get/SmartFTP.msi'
$url64 = 'http://www.smartftp.com/get/SmartFTP64.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes