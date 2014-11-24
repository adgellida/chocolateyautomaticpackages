$packageName = '{{PackageName}}'
$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))
$shortcut_to_remove = "$desktop\Client.bat.lnk"

try {

  Remove-Item "$desktop\$shortcut_to_remove"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}