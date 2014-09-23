$packageName = 'spideroak'
$installerType = 'EXE'
$url = 'http://tonigellida.x10.mx/chocolateypackages/spideroak/SpiderOakSetup-5.1.8.exe'
$url64 = 'http://tonigellida.x10.mx/chocolateypackages/spideroak/SpiderOakSetup-5.1.8-x64.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes