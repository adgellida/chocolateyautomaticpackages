try {
	$packageName = 'arduinoidegalileo'
    $url = 'http://downloadmirror.intel.com/23171/eng/Intel_Galileo_Arduino_SW_1.5.3_on_Windows_v0.7.5.zip'
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\arduino-1.5.3\arduino.exe"
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}
