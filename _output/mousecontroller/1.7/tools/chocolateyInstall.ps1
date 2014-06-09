$packageName = 'mousecontroller'
$url = 'http://optimate.dl.sourceforge.net/project/mousecontroller/MouseController_1.7.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\MouseController.exe"

Install-ChocolateyDesktopLink $targetFilePath