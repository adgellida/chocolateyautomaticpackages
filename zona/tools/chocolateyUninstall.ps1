$packageName = 'zona'
$fileType = 'exe'

$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

# Variables for the AutoHotkey-script
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\$packageName.ahk"

try {

	#AutoHotKey 

	if ($is64bit) {
			$unpath = "${Env:ProgramFiles(x86)}\Zona\uninstall.exe"
		} else {
			$unpath = "$Env:ProgramFiles\Zona\uninstall.exe"
		}

	Start-Process 'AutoHotkey' $ahkFile
	Start-Process $unpath $silentArgs
	Wait-Process -Name "zonaUninstall"
	
    }

    Write-ChocolateySuccess $packageName

} catch {

    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}

