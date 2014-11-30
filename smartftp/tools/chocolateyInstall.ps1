$packageName = '{{PackageName}}'
$installerType = 'msi'
$url = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgs = '/quiet'
$validExitCodes = @(0,3010) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes