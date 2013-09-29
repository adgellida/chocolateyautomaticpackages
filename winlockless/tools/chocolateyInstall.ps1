$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\winlockless.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath