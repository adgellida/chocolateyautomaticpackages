$packageName = 'mousecontroller'
$url = 'http://optimate.dl.sourceforge.net/project/mousecontroller/MouseController_1.7.1.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "MouseController.exe"
$targetFilePath = "$unzipLocation\$executable"

try {
	
	Install-ChocolateyZipPackage $packageName $url $unzipLocation

	Install-ChocolateyDesktopLink $targetFilePath

	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}