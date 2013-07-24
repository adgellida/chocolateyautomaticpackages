$packageName = 'mousecontroller'
$shorcutfolder = 'MouseController.lnk'

try {
  Remove-Item "$Home\Desktop\$shorcutfolder"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
