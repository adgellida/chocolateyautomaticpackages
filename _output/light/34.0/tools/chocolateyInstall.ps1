$packageName = 'light'
$installerType = 'EXE'
$url = 'http://heanet.dl.sourceforge.net/project/lightfirefox/34/icc/light-34.0.en-US.win32.installer.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$fileFullPath = "$Env:ProgramFiles\Light\light.exe"
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Install-ChocolateyDesktopLink $fileFullPath
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}