# winsys install
 
$toolsDir            = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$PackageParameters   = Get-PackageParameters
$urlPackage          = 'https://github.com/adgellida/winsys/releases/download/v2018.10.26/winsys-2018.10.26-windows-installer.exe'
$checksumPackage     = 'F88F37E07A608FC5539B5358DE2323477D80EF15828558717E1830032D5F5FFE2A2F212CE8CD90D90744ECD236DDB3BAA171BEBCBB5D20F83CC1B01F79A23E8D'
$checksumTypePackage = 'SHA512'
 
$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'EXE'
    url            = $urlPackage
    checksum       = $checksumPackage
    checksumType   = $checksumTypePackage
	silentArgs     = '--mode unattended'
    validExitCodes = @(0, 1000, 1101)
}
 
Install-ChocolateyPackage @packageArgs