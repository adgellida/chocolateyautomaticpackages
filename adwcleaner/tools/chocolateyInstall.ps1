$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$fileFullPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\adwcleaner_$version.exe"
$shortcut_to_modify = "$Home\Desktop\adwcleaner_$version.exe.lnk"
$shortcut_modified = "$Home\Desktop\AdwCleaner.lnk"

Get-ChocolateyWebFile $packageName $fileFullPath $url

	if (Test-Path $shortcut_modified){
		Remove-Item $shortcut_modified
	}
	
Install-ChocolateyDesktopLink $fileFullPath

Rename-Item $shortcut_to_modify $shortcut_modified