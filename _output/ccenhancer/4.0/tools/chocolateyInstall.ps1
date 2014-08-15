$packageName = 'ccenhancer'
$url = 'http://thewebatom.net/downloads/download/169/CCEnhancer-4.0.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\CCEnhancer-{version}.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath