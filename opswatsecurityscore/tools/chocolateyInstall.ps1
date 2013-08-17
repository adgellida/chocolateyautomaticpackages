$packageName = '{{PackageName}}'
$installerType = 'msi'
#$url = 'http://software.opswat.com/securityscore/installer/OPSWATSecurityScore.msi'
$url = '{{DownloadUrl}}'
$silentArgs = '/qb'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes