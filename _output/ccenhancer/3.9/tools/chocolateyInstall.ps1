$packageName = 'ccenhancer'
$url = 'http://download.thewebatom.net/5300a256e895a/CCEnhancer-3.9-Multilanguage.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\CCEnhancer\CCEnhancer.exe"

Install-ChocolateyDesktopLink $targetFilePath
