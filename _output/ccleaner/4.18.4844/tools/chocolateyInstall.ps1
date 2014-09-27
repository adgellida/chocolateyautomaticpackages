$packageName = 'ccleaner'
$versionToConvert = '4.18.4844'
$version = $versionToConvert.Substring(0,$versionToConvert.Length-5)
$uninstallRegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\CCleaner"
$fileType = 'exe'
$LCID = (Get-Culture).LCID
$url = 'http://download.piriform.com/ccsetup418.exe'
$silentArgs = "/S /L=$LCID"
# Please test every new version of CCleaner for possible adware/spyware/crapware which installs silently together with Piriform software products.
# Only push the new package to the gallery if you are 100% sure that this package prevents the install of the bundled adware.
$regAdd = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\regAdd.ps1"
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$mantainer = 'tonigellida'

try {
 		if (Test-Path $uninstallRegistryPath) {
			$installedVersion = (Get-ItemProperty $uninstallRegistryPath).DisplayVersion
		}
	
	if ($installedVersion -gt $version) {
		Write-Host "Your $packageName $installedVersion is higher than the $version proporcionated by chocolatey repo."
		Write-Host "Please wait or contact the mantainer $mantainer to update this package."
		Write-Host "When the package is updated try another time. Thanks."
		
	}elseif ($installedVersion -eq $version) {
		Write-Host "$packageName $version is already installed."
		
	} else {

        # Download and install the program

		# This adds a registry key which prevents Google Chrome from getting installed together with Piriform software products.
		Start-ChocolateyProcessAsAdmin "& `'$regAdd`'"

		Install-ChocolateyPackage $packageName $fileType $silentArgs $url -validExitCodes $validExitCodes
		
		}
	
	Write-ChocolateySuccess $packageName
	
} catch {

		Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
		throw 
}







