$packageName = 'crystaldiskinfo'
$installerType = 'EXE'
#$url = 'http://hiyohiyo.s181.coreserver.jp/{anchor1}.exe'
$url = 'http://hiyohiyo.s181.coreserver.jp/CrystalDiskInfo5_6_2Shizuku-en.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes