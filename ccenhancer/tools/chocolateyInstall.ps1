$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\CCEnhancer-$version-Multilanguage\CCEnhancer.exe"

Install-ChocolateyDesktopLink $targetFilePath
