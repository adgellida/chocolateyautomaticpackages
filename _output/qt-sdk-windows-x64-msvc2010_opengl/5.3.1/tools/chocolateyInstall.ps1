$packageName = 'qt-sdk-windows-x64-msvc2010_opengl'
$installerType = 'EXE'
$url = 'http://heanet.dl.sourceforge.net/project/qtx64/qt-x64/5.3.1/msvc2010/qt-5.3.1-x64-msvc2010-opengl.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes