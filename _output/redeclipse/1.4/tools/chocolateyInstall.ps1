$packageName = 'redeclipse'
$installerType = 'EXE'
$url = 'http://garr.dl.sourceforge.net/project/redeclipse/redeclipse_{version}/redeclipse_{version}_win.exe'
$url = 'http://garr.dl.sourceforge.net/project/redeclipse/redeclipse_1.4/redeclipse_1.4_win.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes