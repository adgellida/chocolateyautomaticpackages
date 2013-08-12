$packageName = 'piratebrowser'
$installDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$tempDir = "$env:TEMP\chocolatey\$packageName"
#$url = 'http://piratebrowser.com/downloads/PirateBrowser_{anchor1}.exe.torrent'
$url = 'http://piratebrowser.com/downloads/PirateBrowser_0.6b.exe.torrent'

try {
    if (-not (Test-Path $tempDir)) {New-Item $tempDir -ItemType directory}
    $file = "$tempDir\PirateBrowser_{anchor1}.exe"

	aria2c --dir=$tempDir --seed-time=0 $url
    Start-Process "7za" -ArgumentList "x -o`"$installDir`" -y `"$file`"" -Wait

    $targetFilePath = "$installDir\PirateBrowser {anchor1}\Start PirateBrowser.exe"
	Install-ChocolateyDesktopLink $targetFilePath

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}