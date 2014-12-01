$packageName = 'flare'
$url = 'http://heanet.dl.sourceforge.net/project/flare-game/Windows/flare-game.0.19.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "flare\flare.exe"
$targetFilePath = "$unzipLocation\$executable"

try {
	
	Install-ChocolateyZipPackage $packageName $url $unzipLocation

	Install-ChocolateyDesktopLink $targetFilePath

	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}