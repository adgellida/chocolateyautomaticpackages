$packageName = 'arduinoide'

try {
  Remove-Item "$Home\Desktop\Arduino Nightly.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
