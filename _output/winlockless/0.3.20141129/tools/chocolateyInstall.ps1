$packageName = 'winlockless'
$url = 'http://hispasec.com/resources/soft/winlockless.exe'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\winlockless.exe"

try {

	Get-ChocolateyWebFile $packageName $fileFullPath $url

	Install-ChocolateyDesktopLink $fileFullPath

	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}