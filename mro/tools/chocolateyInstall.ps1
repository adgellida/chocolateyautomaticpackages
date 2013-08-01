$packageName = '{{PackageName}}'
#$url = 'http://www.miniracingonline.com/descargas/utilidades/launcher/mro_launcher.zip'
$url = '{{DownloadUrl}}'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\MiniRacingOnline\mro_launcher.exe"

Install-ChocolateyDesktopLink $targetFilePath
















$packageName = 'mro'
$url = 'http://www.miniracingonline.com/descargas/utilidades/launcher/mro_launcher.zip'

try {
wget -P "C:\Chocolatey\lib\mro.0.2.1.20130519\tools" -c http://www.miniracingonline.com/descargas/utilidades/launcher/mro_launcher.zip
7za X "C:\Chocolatey\lib\mro.0.2.1.20130519\tools\mro_launcher.zip" -o"C:\Chocolatey\lib\mro.0.2.1.20130519\tools"
Remove-Item "C:\Chocolatey\lib\mro.0.2.1.20130519\tools\mro_launcher.zip"

#Create shortcut

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) "mro launcher.lnk"
$targetPath      = "C:\Chocolatey\lib\mro.0.2.1.20130519\tools\MiniRacingOnline\mro_launcher.exe"
$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.WorkingDirectory ="C:\Chocolatey\lib\mro.0.2.1.20130519\tools\"

# Call

$link.Save()

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}