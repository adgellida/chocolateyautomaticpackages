$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://download.aida64.com/{anchor1}.exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes



$packageName = '{{PackageName}}'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$tempDir = "$env:TEMP\chocolatey\$packageName"
#$url = 'http://piratebrowser.com/downloads/{anchor1}.exe'
$url = '{{DownloadUrl}}'

try {
    if (-not (Test-Path $tempDir)) {New-Item $tempDir -ItemType directory}
    $file = "$tempDir\${packageName}.exe"

    Get-ChocolateyWebFile $packageName $file $url
    Start-Process "7za" -ArgumentList "x -o`"$installDir`" -y `"$file`"" -Wait

    $targetFilePath = "$installDir\Tor Browser\Start Tor Browser.exe"
	Install-ChocolateyDesktopLink $targetFilePath

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}