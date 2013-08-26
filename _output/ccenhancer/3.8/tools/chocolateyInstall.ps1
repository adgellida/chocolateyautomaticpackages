$packageName = 'ccenhancer'
#$url = 'http://download.thewebatom.net/{anchor1}.zip'
$url = 'http://download.thewebatom.net/521ae8275bda5/CCEnhancer-3.8-multilanguage.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\CCEnhancer\CCEnhancer.exe"

Install-ChocolateyDesktopLink $targetFilePath
