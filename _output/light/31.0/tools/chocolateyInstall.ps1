$packageName = 'light'
$installerType = 'EXE'
$url = 'http://freefr.dl.sourceforge.net/project/lightfirefox/31/vc_sync/light-31.0.en-US.win32.installer_sync.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$fileFullPath = "$Env:ProgramFiles\Light\light.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

Install-ChocolateyDesktopLink $fileFullPath