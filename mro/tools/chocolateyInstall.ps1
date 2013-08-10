$packageName = '{{PackageName}}'
#$url = 'http://www.miniracingonline.com/descargas/utilidades/launcher/mro_launcher.zip'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\MiniRacingOnline\mro_launcher.exe"

Install-ChocolateyDesktopLink $targetFilePath