$packageName = 'peazip'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $url = 'http://sourceforge.net/projects/peazip/files/5.0/peazip-5.0.WIN64.exe/download'
  } else {
    $url = 'http://sourceforge.net/projects/peazip/files/5.0/peazip-5.0.WINDOWS.exe/download'
  }

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes