$packageName = 'light'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$fileFullPath = "$Env:ProgramFiles\Light\light.exe"

$processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $url = 'http://tonigellida.x10.mx/owncloud/public.php?service=files&t=df836474d9802d21294d7e655a521877&download'
   } else {
	$url = 'http://tonigellida.x10.mx/owncloud/public.php?service=files&t=ba2447b998691744864793cc625b455d&download'
  }

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

Install-ChocolateyDesktopLink $fileFullPath