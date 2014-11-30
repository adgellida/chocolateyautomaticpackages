$packageName = 'otterbrowser'
$url_x64 = 'http://switch.dl.sourceforge.net/project/otter-browser/otter-browser-weekly36/otter-browser-win64-weekly36.zip'
$url_x86 = 'http://skylink.dl.sourceforge.net/project/otter-browser/otter-browser-weekly36/otter-browser-win32-weekly36.zip'

$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\otter-browser.exe"
$shortcut_to_modify = "$Home\Desktop\otter-browser.exe.lnk"
$shortcut_modified = "$Home\Desktop\Otter Browser.lnk"

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

  if ($is64bit) {
    $url = $url_x64
  } else {
    $url = $url_x86
  }
  
Install-ChocolateyZipPackage $packageName $url $unzipLocation

Install-ChocolateyDesktopLink $fileFullPath

Rename-Item $shortcut_to_modify $shortcut_modified