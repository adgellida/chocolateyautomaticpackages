$packageName = 'fbvlc'
$installerType = 'msi'
$url = 'http://softlayer-ams.dl.sourceforge.net/project/fbvlc/FBVLC 0.1.5/FBVLC_0.1.5_vlc_2.1.3.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0,3010) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}