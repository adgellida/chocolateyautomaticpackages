$packageName = 'qt-creator'
$installerType = 'EXE'
$url = 'http://download.qt-project.org/official_releases/qtcreator/3.1/3.1.2/qt-creator-opensource-windows-x86-3.1.2.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes