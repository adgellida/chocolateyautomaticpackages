try {
	$packageName = 'arduinoidebeta'
    $url = 'http://downloads.arduino.cc/arduino-1.5.2-windows.zip'
    #$url = 'http://downloads.arduino.cc/arduino-{version}-windows.zip'
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation
	
	$versionFolder = $url -replace 'http://downloads.arduino.cc/(arduino-+)-windows.zip', '$1'
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\$versionFolder\arduino.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}






