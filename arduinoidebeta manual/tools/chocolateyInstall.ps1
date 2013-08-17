try {
	$packageName = 'arduinoidebeta'
    $url = 'http://downloads.arduino.cc/arduino-1.5.2-windows.zip'
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation
	
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\arduino-1.5.2\arduino.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}