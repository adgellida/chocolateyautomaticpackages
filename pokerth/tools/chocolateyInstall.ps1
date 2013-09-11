$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://heanet.dl.sourceforge.net/project/pokerth/pokerth/{version1}/PokerTH-{version}-windows-installer.exe'
$url = '{{DownloadUrl}}'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes