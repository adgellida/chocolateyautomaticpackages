$packageName = 'messengerreviver'
$url = 'http://mustang.trexion.com/MessengerReviver-2-2-2.exe'

try {
  
  Remove-Item "$Home\Desktop\MessengerReviver-2-2-1.exe.lnk"		#Remove shortcut previous version
  Remove-Item "C:\Chocolatey\lib\messengerreviver.2.2.1.20130516" -recurse		#Remove previous version
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $nodePath = Join-Path $scriptPath 'MessengerReviver-2-2-2.exe'
  Get-ChocolateyWebFile "$packageName" "$nodePath" "$url"
  Install-ChocolateyPath "$nodePath" 'Machine' # Machine will assert administrative rights
  Install-ChocolateyDesktopLink "$nodePath"
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}