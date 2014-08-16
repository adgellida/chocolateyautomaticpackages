$packageName = 'xvst'
$installerType = 'msi'
$url = 'http://heanet.dl.sourceforge.net/project/xviservicethief/Windows Binaries/2.5.2 bin/xVST_2_5_2-static.msi'
$silentArgs = '/qb'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes