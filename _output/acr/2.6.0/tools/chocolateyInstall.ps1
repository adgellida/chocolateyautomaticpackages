$packageName = 'acr'
$url = 'https://downloads.sourceforge.net/project/assaultcuber/Before%202.6.1%20%28AC%201.0%20Base%29/Release%202.6/Release%202.6.0/acr_02_06_00-w.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$linkPath        = Join-Path ([Environment]::GetFolderPath("Desktop")) "AssaultCube Reloaded.lnk"
$targetPath      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Client.bat"
$link            = (New-Object -ComObject WScript.Shell).CreateShortcut($linkPath)
$link.TargetPath = $targetPath
$link.IconLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\bin_win32\ac_client.exe"
$link.WorkingDirectory = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$link.Save()