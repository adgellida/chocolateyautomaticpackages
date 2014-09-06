$packageName = 'rmprepusb'
$installerType = 'EXE'
$url = 'https://78462f86-a-abe4fd04-s-sites.googlegroups.com/a/rmprepusb.com/www/documents/release-2-0/Install_RMPrepUSB_Full_2.1.722.zip'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
  $chocTempDir = Join-Path $env:TEMP 'chocolatey'
  $tempDir = Join-Path $chocTempDir "$packageName"

  # Download and extract installer
  Install-ChocolateyZipPackage "$packageName" "$url" $tempDir
  
  # Run the installer
  $installer = Join-Path $tempDir 'Install_RMPrepUSB_Full.exe'
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installer" -validExitCodes $validExitCodes
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}