$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro12.0.670.exe?e=1376728983&h=7e7551645eba44f8b4220cf716f29eeb&file=.exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx