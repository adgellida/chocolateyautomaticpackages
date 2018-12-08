# winsys uninstall
 
$packageName = 'winsys'
$installerType = 'EXE'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0, 1000, 1101)

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
$unpath = "${Env:ProgramFiles(x86)}\winsys\unins000.exe"
} else {
$unpath = "$Env:ProgramFiles\winsys\unins000.exe"
}
Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes