# winsys install
 
$toolsDir            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$PackageParameters   = Get-PackageParameters
$urlPackage          = 'https://github.com/adgellida/winsys/releases/download/v2018.12.08/winsys-2018.12.16-windows-installer.exe'
$checksumPackage     = 'A3FE8049F316853E85DC84A572E0C08BA5CABC396A67E3B97A74F53871633B26E8CC42F9F6FCC26602AEA6585DE1131FF6F0DBBF4B098BD16BC8B2270AE7D4F3'
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