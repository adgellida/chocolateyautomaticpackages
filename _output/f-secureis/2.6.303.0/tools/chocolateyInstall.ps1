$packageName = 'f-secureis'
$installerType = 'EXE'
$url = 'http://download.sp.f-secure.com/SE/Retail/installer/2/F-SecureNetworkInstaller_IS-ESTORE-TRIAL-GLOBAL_.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes