$packageName = 'aida64extreme'
$url = 'http://download.aida64.com/aida64extreme_build_2731_phyzl2fjwb.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\aida64.exe"

Install-ChocolateyDesktopLink $targetFilePath