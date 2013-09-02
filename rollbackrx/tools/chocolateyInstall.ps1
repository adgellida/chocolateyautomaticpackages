$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://www.horizondatasys.com/Files/Rollback_Rx_v10/downloads/Rollbackv10.zip'
$url = '{{DownloadUrl}}'
$silentArgs = '/q'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$chocTempDir = Join-Path $env:TEMP 'chocolatey'
$tempDir = Join-Path $chocTempDir "$packageName"

$Rollbackv10Dir = Join-Path $tempDir "Rollbackv10"

# Download and extract rollbackrx installer
Install-ChocolateyZipPackage "$packageName" "$url" $tempDir

# Run the installer
$installer = Join-Path $Rollbackv10Dir 'Setup.exe'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installer" -validExitCodes $validExitCodes