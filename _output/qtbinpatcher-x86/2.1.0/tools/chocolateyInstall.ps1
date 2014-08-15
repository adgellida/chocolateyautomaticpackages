$packageName = 'qtbinpatcher-x86'
$url = 'http://tver-soft.org/component/phocadownload/category/12-qtbinpatcher2100?download=59:qtbinpatcher-210-win-x86'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\qtbinpatcher.exe"

Install-ChocolateyDesktopLink $targetFilePath