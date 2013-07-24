$packageName = 'k-litecodecpackbasic'
$installerType = 'EXE'
$url    = 'http://download.betanews.com/download/1094057842-1/K-Lite_Codec_Pack_995_Basic.exe'
$url64  = 'http://download.betanews.com/download/1094057842-5/K-Lite_Codec_Pack_995_x64.exe'
$urlupdate  = 'http://download.betanews.com/download/1094057842-4/klcp_update_996_20130604.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
	
try {	
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
	
  $is64bit = (Get-WmiObject Win32_Processor).AddressWidth -eq 64
  if($is64bit) { 
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url64"  -validExitCodes $validExitCodes
  }
  Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlupdate"  -validExitCodes $validExitCodes
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}