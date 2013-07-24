$packageName = 'avgantivirusfree'
$installerType = 'EXE'
$url64 = 'http://aa-download.avg.com/filedir/inst/avg_free_x64_all_2013_3349a6461.exe'
$url32 = 'http://aa-download.avg.com/filedir/inst/avg_free_x86_all_2013_3349a6461.exe'
$LCID = (Get-Culture).LCID
$SelectedLanguage = "/SelectedLanguage=$LCID"
$silentArgs = '/UILevel=silent /AppMode=setup /InstallToolbar=0 /ChangeBrowserSearchProvider=0 "$SelectedLanguage" /InstallSidebar=0 /ParticipateProductImprovement=0 /DontRestart /DisableScan /KillProcessesIfNeeded'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url64"  -validExitCodes $validExitCodes
  } else {
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url32"  -validExitCodes $validExitCodes
  }
   
#avg_free_x64_all_2013_3336a6294 /UILevel=silent /AppMode=setup /InstallToolbar=0 /ChangeBrowserSearchProvider=0 /SelectedLanguage=XXXX /InstallSidebar=0 /ParticipateProductImprovement=0 /DontRestart /DisableScan /KillProcessesIfNeeded