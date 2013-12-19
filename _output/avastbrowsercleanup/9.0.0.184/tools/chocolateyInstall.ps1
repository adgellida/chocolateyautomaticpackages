$packageName = 'avastbrowsercleanup'
$url = 'http://files.avast.com/files/tools/avast-browser-cleanup.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\avast-browser-cleanup.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath