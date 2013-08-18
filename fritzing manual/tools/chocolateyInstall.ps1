try {
	$packageName = 'fritzing'
    $url = 'http://fritzing.org/download/0.8.3b/windows/fritzing.2013.07.27.pc.zip' # For testing purposes
			 
	$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\fritzing.2013.07.27.pc\fritzing.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}