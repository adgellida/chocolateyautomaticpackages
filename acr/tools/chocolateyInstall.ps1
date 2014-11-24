$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "Client.bat"


Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$unzipLocation\$executable"

	if (Test-Path $shortcut_modified){
		Remove-Item $shortcut_modified
	}

Install-ChocolateyDesktopLink $targetFilePath

$targetFilePath.TargetPath = "$targetFilePath"
$targetFilePath.IconLocation = "$unzipLocation\bin_win32\ac_client.exe"
$targetFilePath.WorkingDirectory = "$unzipLocation"
$targetFilePath.Save()