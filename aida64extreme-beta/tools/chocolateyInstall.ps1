try {
	$packageName = 'aida64extreme'
    $url = 'http://download.aida64.com/aida64extreme_build_2590_hs6vgtb9xy.zip'
			 
	$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\aida64.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}