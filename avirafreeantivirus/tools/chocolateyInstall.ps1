$packageName = 'avirafreeantivirus'
$installerType = 'EXE'
$urles = 'http://personal.avira-update.com/package/wks_avira13/win32/es/pecl/avira_free_antivirus_es.zip'
$urlfr = 'http://personal.avira-update.com/package/wks_avira13/win32/fr/pecl/avira_free_antivirus_fr.zip'
$urlde = 'http://personal.avira-update.com/package/wks_avira13/win32/de/pecl/avira_free_antivirus_de.zip'
$urlit = 'http://personal.avira-update.com/package/wks_avira13/win32/it/pecl/avira_free_antivirus_it.zip'
$urlpt = 'http://personal.avira-update.com/package/wks_avira13/win32/ptbr/pecl/avira_free_antivirus_ptbr.zip'
$urlnl = 'http://personal.avira-update.com/package/wks_avira13/win32/nl/pecl/avira_free_antivirus_nl.zip'
$urltr = 'http://personal.avira-update.com/package/wks_avira13/win32/tr/pecl/avira_free_antivirus_tr.zip'
$urlru = 'http://personal.avira-update.com/package/wks_avira13/win32/ru/pecl/avira_free_antivirus_ru.zip'
$urlen = 'http://personal.avira-update.com/package/wks_avira13/win32/en/pecl/avira_free_antivirus_en.zip'

$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$language = (get-uiculture).TwoLetterISOLanguageName

try {
  $chocTempDir = Join-Path $env:TEMP 'chocolatey'
  $tempDir = Join-Path $chocTempDir "$packageName"

  # Download and extract installer
  if($language -eq "es"){Install-ChocolateyZipPackage "$packageName" "$urles" $tempDir}
  elseif($language -eq "fr"){Install-ChocolateyZipPackage "$packageName" "$urlfr" $tempDir}
  elseif($language -eq "de"){Install-ChocolateyZipPackage "$packageName" "$urlde" $tempDir}
  elseif($language -eq "it"){Install-ChocolateyZipPackage "$packageName" "$urlit" $tempDir}
  elseif($language -eq "pt"){Install-ChocolateyZipPackage "$packageName" "$urlpt" $tempDir}
  elseif($language -eq "nl"){Install-ChocolateyZipPackage "$packageName" "$urlnl" $tempDir}
  elseif($language -eq "tr"){Install-ChocolateyZipPackage "$packageName" "$urltr" $tempDir}
  elseif($language -eq "ru"){Install-ChocolateyZipPackage "$packageName" "$urlru" $tempDir}
  else{Install-ChocolateyZipPackage "$packageName" "$urlen" $tempDir}
  # Run the installer
  $installer = Join-Path $tempDir 'presetup.exe'
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$installer" -validExitCodes $validExitCodes
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" $($_.Exception.Message)
  throw
}



