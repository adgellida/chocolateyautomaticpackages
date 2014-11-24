$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "aida64.exe"
$targetFilePath = "$unzipLocation\$executable"

Install-ChocolateyZipPackage $packageName $url $unzipLocation

Install-ChocolateyDesktopLink $targetFilePath