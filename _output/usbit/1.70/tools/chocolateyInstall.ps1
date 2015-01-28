$packageName = 'usbit'
$url = 'http://www.alexpage.de/download/usbit/usbit.zip'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\USB Image Tool.exe"

try {

	Get-ChocolateyWebFile $packageName $fileFullPath $url

	Install-ChocolateyDesktopLink $fileFullPath

	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}