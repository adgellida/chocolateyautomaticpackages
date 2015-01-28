$packageName = 'unity4'
$installerType = 'EXE'
$url = 'http://download.unity3d.com/download_unity/UnitySetup-4.5.5.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes