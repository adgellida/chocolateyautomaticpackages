$packageName = 'aida64-networkaudit'
$url = 'http://download.aida64.com/aida64networkaudit470.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "aida64.exe"
$targetFilePath = "$unzipLocation\$executable"

Install-ChocolateyZipPackage $packageName $url $unzipLocation

Install-ChocolateyDesktopLink $targetFilePath