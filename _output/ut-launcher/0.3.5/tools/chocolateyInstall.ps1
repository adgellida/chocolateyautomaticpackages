$packageName = 'ut-launcher'
$url = 'https://ut.rushbase.net/rush/UTLauncher/UTLauncher-0.3.5.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "UTLauncher.exe"
$shortcut_to_modify = "$Home\Desktop\UTLauncher.exe.lnk"
$shortcut_modified = "$Home\Desktop\UTLauncher.lnk" 

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$unzipLocation\$executable"

Install-ChocolateyDesktopLink $targetFilePath

Rename-Item $shortcut_to_modify $shortcut_modified













