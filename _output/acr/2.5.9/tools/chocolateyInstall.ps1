$packageName = 'acr'
$url = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/assaultcuber/acr_02_05_09-w.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) "AssaultCube Reloaded.lnk"
$targetPath      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Client.bat"
$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.IconLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\bin_win32\ac_client.exe"
$link.WorkingDirectory = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$link.Save()
