$packageName = 'qt-sdk-windows-x64-mingw_opengl_seh'
$installerType = 'EXE'
$url = 'http://skylink.dl.sourceforge.net/project/qtx64/qt-x64/5.3.2/mingw-4.9/seh/qt-5.3.2-x64-mingw491r1-seh-opengl.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes