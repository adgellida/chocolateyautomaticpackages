$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'Midori'
  fileType       = 'EXE'
  url            = 'https://astian.azureedge.net/wp-content/uploads/midori-browser/windows/midori-11.2.2.win32.installer.exe'
  url64          = 'https://astian.azureedge.net/wp-content/uploads/midori-browser/windows/midori-11.2.2.win64.installer.exe'
  checksum       = 'B1C2B5DE270AE8982B8D781660ED14B02FDAFEBBF758B745D51A726C90869388'
  checksum64     = '0D0103B30AAFD325C16E606F9BA8D97C985E454330A58CE4188C0705B357A744'
  checksumType   = 'sha256'
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs