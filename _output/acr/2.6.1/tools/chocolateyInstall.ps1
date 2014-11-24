$packageName = 'acr'
$url = 'http://optimate.dl.sourceforge.net/project/assaultcuber/Release 2.7/Release 2.6.1 (2.7 beta 1)/acr_02_06_01-w.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "client.bat"
$targetFilePath = "$unzipLocation\$executable"

Install-ChocolateyZipPackage $packageName $url $unzipLocation

Install-ChocolateyDesktopLink $targetFilePath
