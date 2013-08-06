$packageName = 'tinytask'
#$url = 'http://www.vtaskstudio.com/tinytask.exe' # For testing purposes
$url = 'http://www.vtaskstudio.com/tinytask.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\tinytask.exe"

Get-ChocolateyWebFile $packageName $fileFullPath $url

Install-ChocolateyDesktopLink $fileFullPath