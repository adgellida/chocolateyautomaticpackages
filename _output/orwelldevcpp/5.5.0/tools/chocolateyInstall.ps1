$packageName = 'orwelldevcpp'
$installerType = 'EXE'
$url = 'http://heanet.dl.sourceforge.net/project/orwelldevcpp/Setup Releases/Dev-Cpp 5.5.0 TDM-GCC x64 4.7.1 Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes