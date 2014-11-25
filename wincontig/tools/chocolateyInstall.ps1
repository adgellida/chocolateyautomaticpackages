$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

try {

	Install-ChocolateyZipPackage $packageName $url $unzipLocation

	$processor = Get-WmiObject Win32_Processor
	$is64bit = $processor.AddressWidth -eq 64
	if ($is64bit) {
		$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\WinContig64.exe"
	} else {
		$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\WinContig.exe"
	}
	
	Install-ChocolateyDesktopLink $targetFilePath
  
	# the following is all part of error handling
    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}













