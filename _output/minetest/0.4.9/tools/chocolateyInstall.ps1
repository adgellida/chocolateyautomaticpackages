$packageName = 'minetest'
$url = 'https://github.com/minetest/minetest/releases/download/0.4.9/minetest-0.4.9-win32-mingw.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\CCEnhancer-$version-Multilanguage\CCEnhancer.exe"

Install-ChocolateyDesktopLink $targetFilePath
