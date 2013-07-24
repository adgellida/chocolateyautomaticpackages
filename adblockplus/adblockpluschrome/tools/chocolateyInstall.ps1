$packageName = 'adblockpluschrome'
$url = "https://adblockplus.org/en/chrome"

try {

& "${Env:LOCALAPPDATA}\Google\Chrome\Application\chrome.exe" "$url"

  # the following is all part of error handling
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}

  