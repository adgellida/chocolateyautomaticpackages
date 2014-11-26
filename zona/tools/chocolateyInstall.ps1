$packageName = 'zona'
#$version = '1.0.5.3'
$version = '1.0.4.7'
$exeToVersioning_x86 = "$Env:ProgramFiles\Zona\Zona.exe"
$exeToVersioning_x64 = "${Env:ProgramFiles(x86)}\Zona\Zona.exe"
$fileType = 'exe'

#AutoHotKey 
$filePath = "$env:TEMP\chocolatey\$packageName"
$fileFullPath = "$filePath\${packageName}Install.exe"

$url = 'http://dl3.getz.tv/ZonaSetup_latest.exe'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$mantainer = 'tonigellida'

# Variables for the AutoHotkey-script
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\$packageName.ahk"

try {

 	if (Test-Path $exeToVersioning) {
		$installedVersion = (Get-Command $exeToVersioning).FileVersionInfo.FileVersion
	}

	if ($installedVersion -gt $version) {
		Write-Host "Your $packageName $installedVersion is higher than the $version proporcionated by chocolatey repo."
		Write-Host "Please wait or contact the mantainer $mantainer to update this package."
		Write-Host "When the package is updated try another time. Thanks."
		
	}elseif ($installedVersion -eq $version) {
		Write-Host "$packageName $version is already installed."
		
	} else {

        # Download and install the program

        if (-not (Test-Path $filePath)) {
            New-Item $filePath -type directory
        }

        Get-ChocolateyWebFile $packageName $fileFullPath $url
        Start-Process 'AutoHotkey' $ahkFile
        Start-Process $fileFullPath $silentArgs
        Wait-Process -Name "zonaInstall"
        Remove-Item $fileFullPath
    }

    Write-ChocolateySuccess $packageName

} catch {

    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}

