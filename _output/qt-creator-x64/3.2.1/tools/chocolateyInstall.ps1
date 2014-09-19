$packageName = 'qt-creator-x64'
$installerType = 'EXE'
$url = 'http://freefr.dl.sourceforge.net/project/qtx64/qt-creator-x64/3.2.1/qt-creator-3.2.1-x64.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes