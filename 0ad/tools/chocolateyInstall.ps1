$packageName = '{{PackageName}}'
$installerType = 'EXE'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$fileFullPath = "$Env:userprofile\AppData\Local\0 A.D. alpha\binaries\system\pyrogenesis.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

Install-ChocolateyDesktopLink $fileFullPath