$packageName = 'isoplex'
$url = 'http://isoplex.isohunt.to/files/default/win.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Isoplex\Isoplex.exe"

Install-ChocolateyDesktopLink $targetFilePath