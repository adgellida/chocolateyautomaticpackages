$packageName = 'light'
$installerType = 'EXE'
$url = 'http://garr.dl.sourceforge.net/project/lightfirefox/30/icc/light-30.0.en-US.win32.installer.exe'
$url64 = 'http://garr.dl.sourceforge.net/project/lightfirefox/30/icc/light-30.0.en-US.win64-x86_64.installer.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$fileFullPath = "$Env:ProgramFiles\Light\light.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes

Install-ChocolateyDesktopLink $fileFullPath