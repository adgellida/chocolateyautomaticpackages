$packageName = 'rollbackrx'
$installerType = 'EXE'
$url = 'http://tonigellida.x10.mx/packages/rollbackrx/Rollbackv10.zip'
$silentArgs = '/q'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
  $chocTempDir = Join-Path $env:TEMP 'chocolatey'
  $tempDir = Join-Path $chocTempDir "$packageName"

  # Download and extract rollbackrx installer
  Install-ChocolateyZipPackage "$packageName" "$url" $tempDir
  
  # Run the installer
  $installer = Join-Path $tempDir 'Setup.exe'
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installer" -validExitCodes $validExitCodes
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}
