# winsys uninstall
 
$packageName = 'winsys'
$installerType = 'EXE'
$silentArgs = '--mode unattended'
$validExitCodes = @(0, 1000, 1101)

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
$unpath = "${Env:ProgramFiles(x86)}\winsys\uninstall.exe"
} else {
$unpath = "$Env:ProgramFiles\winsys\uninstall.exe"
}
Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes