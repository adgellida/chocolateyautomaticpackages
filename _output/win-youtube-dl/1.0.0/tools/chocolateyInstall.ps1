$packageName = 'win-youtube-dl'
$url = 'http://tonigellida.x10.mx/chocolateypackages/win-youtube-dl/win-youtube-dl.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\win-youtube-dl.exe"

Install-ChocolateyDesktopLink $targetFilePath