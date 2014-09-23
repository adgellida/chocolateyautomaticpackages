$packageName = 'spideroak'
$installerType = 'EXE'
$url = 'http://dl.filehorse.com/win/compression-and-backup/spideroak-32/SpiderOak-5.1.8-(32-bit).exe?st=L1kK2u6ciMiUsirmtiDAgQ&e=1411592286&fn=SpiderOakSetup-5.1.8.exe'
$url64 = 'http://dl.filehorse.com/win/compression-and-backup/spideroak-64/SpiderOak-5.1.8-(64-bit).exe?st=sRRPfxRHNYubeXpoHCAwkg'
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes