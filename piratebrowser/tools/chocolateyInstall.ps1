$packageName = '{{PackageName}}'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$tempDir = "$env:TEMP\chocolatey\$packageName"
$url = '{{DownloadUrl}}'
$anchor1 = '{anchor1}'
try {
    if (-not (Test-Path $tempDir)) {New-Item $tempDir -ItemType directory}
    $fileversion = $url -replace 'http://piratebrowser.com/downloads/PirateBrowser_(+).exe.torrent', '$1'
	$file = "$tempDir\PirateBrowser_$fileversion.exe"

	aria2c --dir=$tempDir --seed-time=0 $url
    Start-Process "7za" -ArgumentList "x -o`"$installDir`" -y `"$file`"" -Wait

    $targetFilePath = "$installDir\PirateBrowser $fileversion\Start PirateBrowser.exe"
	Install-ChocolateyDesktopLink $targetFilePath

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}