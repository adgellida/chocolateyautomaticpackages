$packageName = 'ccenhancer'
#$url = 'http://download.thewebatom.net/511a2ee8bdc06/CCEnhancer-3.7.exe'

try {

#Create shortcut

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) "CCEnhancer.lnk"
$targetPath      = "C:\Chocolatey\lib\ccenhancer.3.7\tools\CCEnhancer.exe"
$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.WorkingDirectory = "C:\Chocolatey\lib\ccenhancer.3.7\tools"

# Call

$link.Save()

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}