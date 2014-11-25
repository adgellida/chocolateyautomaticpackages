$packageName = 'popcorntime'
$version = '0.3.5.2'
$exeToVersioning = "$Env:userprofile\AppData\Local\Popcorn Time\Uninstall.exe"
$installerType = 'EXE'
$url = 'http://212.47.229.79/build/Popcorn-Time-0.3.5.2-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$mantainer = 'tonigellida'

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

		Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
		
		}
	
	Write-ChocolateySuccess $packageName
	
} catch {

		Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
		throw 
}