$packageName = '{{PackageName}}'
$installerType = 'msi'
$url = '{{DownloadUrl}}'
$silentArgs = '/quiet /qb /promptrestart'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#Another silentArgs
#'/passive /qb /promptrestart'
#'/quiet /qb /norestart'
#'/passive /qb /norestart'