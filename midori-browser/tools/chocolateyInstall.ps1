$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'Midori'
  fileType       = 'EXE'
  url            = 'https://astian.azureedge.net/wp-content/uploads/midori-browser/windows/midori-11.3.0.win32.installer.exe'
  url64          = 'https://astian.azureedge.net/wp-content/uploads/midori-browser/windows/midori-11.3.0.win64.installer.exe'
  checksum       = 'B7B59FC5D513344C2A9E4619E90B67E2BAEFCD9C41C6C0BA1318E3E5154A83F6'
  checksum64     = '881F6B1554A7405910D1BD65BAD86E7D63756230913A37D5BDA6169DC0994275'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs