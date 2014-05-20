$packageName = 'k-litecodecpackbasic'
$installerType = 'EXE'
$url = 'http://files01.techspot.com/temp/K-Lite_Codec_Pack_1050_Basic.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
	
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes