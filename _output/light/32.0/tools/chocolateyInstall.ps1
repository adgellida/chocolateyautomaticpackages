$packageName = 'light'
$installerType = 'EXE'
$url = 'http://kent.dl.sourceforge.net/project/lightfirefox/32r2/vc/light-32.0.en-US.win32.installer.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$fileFullPath = "$Env:ProgramFiles\Light\light.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

Install-ChocolateyDesktopLink $fileFullPath