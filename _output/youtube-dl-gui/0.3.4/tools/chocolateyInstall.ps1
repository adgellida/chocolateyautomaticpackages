$packageName = 'youtube-dl-gui'
$installerType = 'EXE'
$url = 'http://tonigellida.x10.mx/chocolateypackages/youtube-dl-gui/youtube-dl-gui-win-setup-0.3.4.zip'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
  $chocTempDir = Join-Path $env:TEMP 'chocolatey'
  $tempDir = Join-Path $chocTempDir "$packageName"

  # Download and extract installer
  Install-ChocolateyZipPackage "$packageName" "$url" $tempDir
  
  # Run the installer
  $installer = Join-Path $tempDir 'setup.exe'
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installer" -validExitCodes $validExitCodes
  
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $fileFullPath = "${Env:ProgramFiles(x86)}\YoutubeDLG\YoutubeDLG.exe"
  } else {
    $fileFullPath  = "$Env:ProgramFiles\YoutubeDLG\YoutubeDLG.exe"
  }
  
  Install-ChocolateyDesktopLink $fileFullPath
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}