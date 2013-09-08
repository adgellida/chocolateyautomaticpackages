$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://netcologne.dl.sourceforge.net/project/tinycad/Official%20Release/{version2}/TinyCAD_{version}_Production_Setup.exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes