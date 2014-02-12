$packageName = 'clover'
$installerType = 'EXE'
$url = 'http://ejie.me/uploads/Clover_Setup_3.0.406.zip'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
  $chocTempDir = Join-Path $env:TEMP 'chocolatey'
  $tempDir = Join-Path $chocTempDir "$packageName"

  # Download and extract installer
  Install-ChocolateyZipPackage "$packageName" "$url" $tempDir
  
  # Run the installer
  $installer = Join-Path $tempDir 'clover_setup.exe'
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installer" -validExitCodes $validExitCodes
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}