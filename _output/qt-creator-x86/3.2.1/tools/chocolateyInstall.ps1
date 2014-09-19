$packageName = 'qt-creator-x86'
$installerType = 'EXE'
$url = 'http://download.qt-project.org/official_releases/qtcreator/3.2/3.2.1/qt-creator-opensource-windows-x86-3.2.1.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes