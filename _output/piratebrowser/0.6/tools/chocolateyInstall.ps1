$packageName = 'piratebrowser'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$tempDir = "$env:TEMP\chocolatey\$packageName"
#$url = 'http://piratebrowser.com/downloads/PirateBrowser_{anchor1}.exe.torrent'
$url = 'http://piratebrowser.com/downloads/PirateBrowser_0.6b.exe.torrent'
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