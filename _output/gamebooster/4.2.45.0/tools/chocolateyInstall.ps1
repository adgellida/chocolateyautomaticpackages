$packageName = 'gamebooster'
$installerType = 'EXE'
$url = 'http://dl.razerzone.com/drivers/GameBooster/RazerGameBoosterSetup_4.2.45.0.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes