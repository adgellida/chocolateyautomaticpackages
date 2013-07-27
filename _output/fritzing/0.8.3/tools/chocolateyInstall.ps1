$packageName = 'fritzing'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\{anchor1}.zip"
#$url = 'http://fritzing.org/download{version}b/windows/{anchor1}.zip'
$url = 'http://fritzing.org/download0.8.3b/windows/fritzing.2013.07.27.pc.zip'
$exeFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\{anchor1}\fritzing"
$path = 'C:\Chocolatey\_work\fritzing.2013.07.26.pc.zip'
Get-ChocolateyWebFile $packageName $fileFullPath $url
Get-ChocolateyUnzip "$fileFullPath" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
#Install-ChocolateyDesktopLink $exeFullPath