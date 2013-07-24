$packageName = 'xonotic'
$url = 'http://dl.xonotic.org/xonotic-0.7.0.zip'
$compressedfile = 'xonotic-0.7.0.zip'
$previouspackageNameVersion = 'xonotic.0.6.0.20130517'
$packageNameVersion = 'xonotic.0.7.0'
$unzipfolder = 'Xonotic'
$executable64 = 'xonotic-x64.exe'
$executable32 = 'xonotic.exe'
$shorcutfolder = 'Xonotic.lnk'

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

try {

Remove-Item "C:\Chocolatey\lib\$previouspackageNameVersion" -Recurse -Force
wget -P "C:\Chocolatey\lib\$packageNameVersion\tools" -c -t 0 --timeout=30 --waitretry=30 "$url"
7za X -y "C:\Chocolatey\lib\$packageNameVersion\tools\$compressedfile" -o"C:\Chocolatey\lib\$packageNameVersion\tools"
Remove-Item "C:\Chocolatey\lib\$packageNameVersion\tools\$compressedfile"
Remove-Item "$Home\Desktop\$shorcutfolder"

#Create shortcut

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) $shorcutfolder

  if ($is64bit) {
	$targetPath      = "C:\Chocolatey\lib\$packageNameVersion\tools\$unzipfolder\$executable64"
  } else {
	$targetPath      = "C:\Chocolatey\lib\$packageNameVersion\tools\$unzipfolder\$executable32"
  }

$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.WorkingDirectory = "C:\Chocolatey\lib\$packageNameVersion\tools\$unzipfolder"

# Call

$link.Save()
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}