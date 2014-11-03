$packageName = 'waterfox'
$installerType = 'EXE'
$url = 'https://d1th2p59px32bw.cloudfront.net/releases/win64/installer/Waterfox 32.0.3 Setup.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes