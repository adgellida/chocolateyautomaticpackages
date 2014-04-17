$packageName = 'messengerreviver'
$url = 'http://messenger.jonathankay.com/redir/messengerreviver2dl.asp'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\{anchor1}.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url
Rename-Item "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\{anchor1}.exe" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\MessengerReviver.exe"
$fileFullPath2 = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\MessengerReviver.exe"
Install-ChocolateyDesktopLink $fileFullPath2