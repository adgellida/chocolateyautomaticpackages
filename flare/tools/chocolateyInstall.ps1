try {
	$packageName = 'flare'
    $url = 'http://optimate.dl.sourceforge.net/project/flare-game/Windows/flare-game.0.19.zip'
			 
	$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\flare\flare.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}