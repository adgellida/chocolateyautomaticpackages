$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://prdownloads.sourceforge.net/emule/eMule{version}-Installer.exe'
#$url = 'http://downloads.sourceforge.net/emule/eMule{version}-Installer.exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes