$packageName = 'qtbinpatcher-x64'
$url = 'http://cznic.dl.sourceforge.net/project/qtx64/external-binaries/qtbinpatcher/2.1.1/qtbinpatcher-2.1.1-win-x64.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qtbinpatcher.exe"

Install-ChocolateyDesktopLink $targetFilePath