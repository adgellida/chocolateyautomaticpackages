$packageName = '{{PackageName}}'
#$url = 'http://download.thewebatom.net/511a2f230c2cc/CCEnhancer-{version}-multilanguage.zip' # For testing purposes
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\CCEnhancer\CCEnhancer.exe"

Install-ChocolateyDesktopLink $targetFilePath
