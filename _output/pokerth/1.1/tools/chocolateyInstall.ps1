$packageName = 'pokerth'
$installerType = 'EXE'
$url = 'http://heanet.dl.sourceforge.net/project/pokerth/pokerth/1.1/PokerTH-1.1-windows-installer.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes