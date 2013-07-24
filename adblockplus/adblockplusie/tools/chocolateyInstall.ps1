$packageName = 'adblockplusie'
$installerType = 'MSI'
$url64 = 'https://downloads.adblockplus.org/devbuilds/adblockplusie/adblockplusie-0.8.470-x64.msi'
$url32 = 'https://downloads.adblockplus.org/devbuilds/adblockplusie/adblockplusie-0.8.470-x86.msi'
$silentArgs = '/passive'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
#msiexec /i adblockplusie-0.8.470-x64.msi /passive
$processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url64"  -validExitCodes $validExitCodes
  } else {
    Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url32"  -validExitCodes $validExitCodes
  }
  
