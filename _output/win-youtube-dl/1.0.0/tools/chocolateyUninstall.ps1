$packageName = 'win-youtube-dl'

try {
  Remove-Item "$Home\Desktop\win-youtube-dl.exe.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
