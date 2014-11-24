$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "client.bat"
$targetFilePath = "$unzipLocation\$executable"

Install-ChocolateyZipPackage $packageName $url $unzipLocation

Install-ChocolateyDesktopLink $targetFilePath
