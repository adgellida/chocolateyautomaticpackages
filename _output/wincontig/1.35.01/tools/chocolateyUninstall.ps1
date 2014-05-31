$packageName = 'wincontig'

try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    Remove-Item "$Home\Desktop\WinContig64.exe.lnk"
  } else {
    Remove-Item "$Home\Desktop\WinContig.exe.lnk"
  }
  
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}