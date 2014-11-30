$packageName = 'fritzing'
$url_86 = 'http://fritzing.org/download/0.9.0b/windows/fritzing.0.9.0b.32.pc.zip'
$url_64 = 'http://fritzing.org/download/0.9.0b/windows-64bit/fritzing.0.9.0b.64.pc.zip'
#$executable = "Fritzing.exe"
$shortcut_to_modify = "$Home\Desktop\Fritzing.exe.lnk"
$shortcut_modified = "$Home\Desktop\Fritzing.lnk" 

try {
	
	$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)


	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	if ($is64bit) {
	    Install-ChocolateyZipPackage $packageName $url_64 $unzipLocation
		$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\fritzing.0.9.0b.64.pc\Fritzing.exe"
	} else {
		Install-ChocolateyZipPackage $packageName $url_86 $unzipLocation
		$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\fritzing.0.9.0b.32.pc\Fritzing.exe"
	}

	Install-ChocolateyDesktopLink $targetFilePath

	Rename-Item $shortcut_to_modify $shortcut_modified
	
    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}


