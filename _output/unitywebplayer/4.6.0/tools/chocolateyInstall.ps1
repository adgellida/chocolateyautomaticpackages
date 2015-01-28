$packageName = 'unitywebplayer'
$installerType = 'EXE'
$url = 'http://webplayer.unity3d.com/download_webplayer-3.x/UnityWebPlayer.exe'
$url64 = 'https://ssl-webplayer.unity3d.com/download_webplayer-3.x/UnityWebPlayer64.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}