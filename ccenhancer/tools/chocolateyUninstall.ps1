$packageName = '{{PackageName}}'

try {
  Remove-Item "$Home\Desktop\CCEnhancer-{{PackageVersion}}.exe.lnk"
  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}
