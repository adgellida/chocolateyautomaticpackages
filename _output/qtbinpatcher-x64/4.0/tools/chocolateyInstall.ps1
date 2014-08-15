$packageName = 'qtbinpatcher-x64'
$url = 'http://tver-soft.org/component/phocadownload/category/12-qtbinpatcher2100?download=57:qtbinpatcher-210-win-x64'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qtbinpatcher.exe"

Install-ChocolateyDesktopLink $targetFilePath