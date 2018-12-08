# winsys install
 
$toolsDir            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$PackageParameters   = Get-PackageParameters
$urlPackage          = 'https://github.com/adgellida/winsys/releases/download/v2018.12.08/winsys-2018.12.08-windows-installer.exe'
$checksumPackage     = '4FAE77B3862DDA779831E4037D3871635979F7A442D8B10021A598E0DFE2D5D7B5A91325FB9945C4DFDCCD6148643AECBEDE4542A599881D12CE656D536EBDD8'
$checksumTypePackage = 'SHA512'
 
$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = $checksumTypePackage
	silentArgs     = '/VERYSILENT'
    validExitCodes = @(0, 1000, 1101)
}
 
Install-ChocolateyPackage @packageArgs