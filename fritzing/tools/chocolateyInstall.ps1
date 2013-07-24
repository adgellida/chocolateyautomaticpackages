$packageName = 'fritzing'
$installerType = 'EXE'
$url = 'http://fritzing.org/download/0.7.12b/windows/fritzing.2013.02.25.pc.zip'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

wget -P "C:\Chocolatey\lib\fritzing.0.7.12.20130611\tools" -c -t 0 --timeout=30 --waitretry=30 "$url"
7za X -y "C:\Chocolatey\lib\fritzing.0.7.12.20130611\tools\fritzing.2013.02.25.pc.zip" -o"C:\Chocolatey\lib\fritzing.0.7.12.20130611\tools"
Remove-Item "C:\Chocolatey\lib\fritzing.0.7.12.20130611\tools\fritzing.2013.02.25.pc.zip"

#Create shortcut

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) "Fritzing.lnk"
$targetPath      = "C:\Chocolatey\lib\fritzing.0.7.12.20130611\tools\fritzing.2013.02.25.pc\Fritzing.exe"

$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.WorkingDirectory ="C:\Chocolatey\lib\fritzing.0.7.12.20130611\tools\fritzing.2013.02.25.pc"

# Call

$link.Save()
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}
