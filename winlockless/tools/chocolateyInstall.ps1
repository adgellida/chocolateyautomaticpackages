$packageName = '{{PackageName}}'
#$url = 'http://hispasec.com/resources/soft/winlockless.exe'
$url = '{{DownloadUrl}}'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\winlockless.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath