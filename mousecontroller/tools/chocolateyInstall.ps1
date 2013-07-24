$packageName = 'mousecontroller'
$compressedfile = 'MouseController_1.5.zip'
$url = "http://kent.dl.sourceforge.net/project/mousecontroller/$compressedfile"
#$previouspackageNameVersion = 'mousecontroller.1.5.0.0'
$packageNameVersion = 'mousecontroller.1.5.0.0'
$executable = 'MouseController.exe'
$shorcutfolder = 'MouseController.lnk'

try {

#Remove-Item "C:\Chocolatey\lib\$previouspackageNameVersion" -Recurse -Force
wget -P "C:\Chocolatey\lib\$packageNameVersion\tools" -c -t 0 --timeout=30 --waitretry=30 "$url"
7za X -y "C:\Chocolatey\lib\$packageNameVersion\tools\$compressedfile" -o"C:\Chocolatey\lib\$packageNameVersion\tools"
Remove-Item "C:\Chocolatey\lib\$packageNameVersion\tools\$compressedfile"
#Remove-Item "$Home\Desktop\$shorcutfolder"

#Create shortcut

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) $shorcutfolder

$targetPath      = "C:\Chocolatey\lib\$packageNameVersion\tools\$executable"

$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.WorkingDirectory = "C:\Chocolatey\lib\$packageNameVersion\tools"

# Call

$link.Save()
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}