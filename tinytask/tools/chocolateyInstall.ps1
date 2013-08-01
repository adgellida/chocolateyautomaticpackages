$packageName = '{{PackageName}}'
#$url = 'http://www.vtaskstudio.com/tinytask.exe' # For testing purposes
$url = '{{DownloadUrl}}'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\tinytask.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath