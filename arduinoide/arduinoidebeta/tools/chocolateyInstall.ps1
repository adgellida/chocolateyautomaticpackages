$packageName = 'arduinoide'
$installerType = 'EXE'
$url = 'http://downloads.arduino.cc/arduino-1.5.2-windows.zip'		#On the next push change
$compressedfile = 'arduino-1.5.2-windows.zip'						#On the next push change
#$previouspackageNameVersion = 'arduinoide.1.5.2.20130614-beta'		#On the next push uncomment
$packageNameVersion = 'arduinoide.1.5.2.20130614-beta'				#On the next push change
#$previousunzipfolder = 'arduino-1.5.2'								#On the next push uncomment
$unzipfolder = 'arduino-1.5.2'										#On the next push change
$executable = 'arduino.exe'
$shorcutfolder = 'Arduino Beta.lnk'

try {

#Move-Item "C:\Chocolatey\lib\$previouspackageNameVersion\tools\$previousunzipfolder\*" "C:\Chocolatey\lib\$packageNameVersion\tools\$unzipfolder"	#On the next push uncomment
#Remove-Item "C:\Chocolatey\lib\$previouspackageNameVersion" -Recurse -Force																		#On the next push uncomment
wget -P "C:\Chocolatey\lib\$packageNameVersion\tools" -c -t 0 --timeout=30 --waitretry=30 "$url"
7za X -y "C:\Chocolatey\lib\$packageNameVersion\tools\$compressedfile" -o"C:\Chocolatey\lib\$packageNameVersion\tools"
Remove-Item "C:\Chocolatey\lib\$packageNameVersion\tools\$compressedfile"
Remove-Item "$Home\Desktop\$shorcutfolder"

#Create shortcut

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) $shorcutfolder
$targetPath      = "C:\Chocolatey\lib\$packageNameVersion\tools\$unzipfolder\$executable"

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
