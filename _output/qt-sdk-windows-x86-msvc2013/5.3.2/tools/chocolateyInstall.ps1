$packageName = 'qt-sdk-windows-x86-msvc2013'
$installerType = 'EXE'
$url = 'http://download.qt-project.org/official_releases/qt/5.3/5.3.2/qt-opensource-windows-x86-msvc2013-5.3.2.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes