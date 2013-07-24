$packageName = 'tinytask'
$file = 'tinytask.exe'
$url = "http://www.vtaskstudio.com/$file"
#$previouspackageNameVersion = 'tinytask.1.50'
$packageNameVersion = 'tinytask.1.50'
$executable = 'tinytask.exe'
$shorcutfolder = 'TinyTask.lnk'

try {

#Remove-Item "C:\Chocolatey\lib\$previouspackageNameVersion" -Recurse -Force
wget -P "C:\Chocolatey\lib\$packageNameVersion\tools" -c -t 0 --timeout=30 --waitretry=30 "$url"
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