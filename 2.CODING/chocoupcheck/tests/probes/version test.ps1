$version = '1.2'

function Find-CID {
  param([String]$croot, [string]$cdname, [string]$ver)

  if (Test-Path $croot) {
    Get-ChildItem -Force -Path $croot | foreach {
      $CurrentKey = (Get-ItemProperty -Path $_.PsPath)
      if ($CurrentKey -match $cdname -and $CurrentKey -match $ver) {
        return $CurrentKey.PsChildName
      }
    }
  }
  return $null
}

$uroot = 'hklm:SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\EC7EE32C3A1C49F48A0FE9A09C6CEDE6\InstallProperties'
$uroot64 = 'hklm:SOFTWARE\Microsoft\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products\EC7EE32C3A1C49F48A0FE9A09C6CEDE6\InstallProperties'

$msid = Find-CID $uroot "DisplayVersion" "$version"
if ($msid -eq $null) {
# try 64bit registry
$msid = Find-CID $uroot64 "DisplayVersion" "$version"
}
if ($msid -ne $null) {
Write-Host "NOT INSTALL"
} else {
Write-Host "INSTALL"
}
Write-Host "Running ok"