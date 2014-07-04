$packageName = 'usbit'
$url = 'http://www.alexpage.de/download/usbit/usbit.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\USB Image Tool.exe"

Install-ChocolateyDesktopLink $targetFilePath













