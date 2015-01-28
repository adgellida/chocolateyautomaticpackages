$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://files01.techspot.com/temp/K-Lite_Codec_Pack_{version:replace:.:}_Basic.exe'
$url = '{{DownloadUrl}}'
#$urlupdate = '{{DownloadUrl}}'
#$urlcomplete = 'http://files01.techspot.com/temp/K-Lite_Codec_Pack_1000_Basic.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
	
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlcomplete"  -validExitCodes $validExitCodes

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlupdate"  -validExitCodes $validExitCodes