$packageName = 'xvst'
$installerType = 'msi'
$url = 'http://softlayer-ams.dl.sourceforge.net/project/xviservicethief/Windows Binaries/2.5.2 bin/xVST_2_5_2-static.msi'
$silentArgs = '/qb'
$validExitCodes = @(0,3010) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}