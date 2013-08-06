$packageName = 'winlockless'
#$url = 'http://hispasec.com/resources/soft/winlockless.exe'
$url = 'http://hispasec.com/resources/soft/winlockless.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\winlockless.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath