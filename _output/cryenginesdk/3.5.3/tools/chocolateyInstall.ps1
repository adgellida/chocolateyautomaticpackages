try {
	$packageName = 'cryenginesdk'
    #$url = 'http://www.crydev.net/dm_eds/download.php?id=4'
    $url = 'http://www.crydev.net/dm_eds/download.php?id=4'
	$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	
    Install-ChocolateyZipPackage $packageName $url $unzipLocation
	
	if ($is64bit) {
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Bin64\DedicatedServerSDK.exe"
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Bin64\Editor.exe"
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Bin64\GameSDK.exe"
	} else {
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Bin32\DedicatedServerSDK.exe"
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Bin32\Editor.exe"
    $targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Bin32\GameSDK.exe"
	}
    
    Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}