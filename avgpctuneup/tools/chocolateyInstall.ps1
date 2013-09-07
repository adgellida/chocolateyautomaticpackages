$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://aa-download.avg.com/filedir/inst/avg_tuht_stf_all_2014_147.exe'
$url = '{{DownloadUrl}}'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes