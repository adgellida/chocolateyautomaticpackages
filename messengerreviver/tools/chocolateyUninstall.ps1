$packageName = 'messengerreviver'

try {
  Remove-Item "$Home\Desktop\MessengerReviver-2-2-2.exe.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
