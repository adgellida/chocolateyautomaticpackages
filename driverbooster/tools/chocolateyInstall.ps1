$packageName = 'driverbooster'
$installerType = 'EXE'
$url = 'http://update.iobit.com/dl/driver_booster_setup.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$checksum = 'CF63027180DBE6DB0047D3DB132E108D605CFD8119EDFA683E3597A084BFFA5E'
$checksumType = 'sha256'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}