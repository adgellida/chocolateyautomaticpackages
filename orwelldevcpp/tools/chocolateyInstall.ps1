$packageName = 'orwelldevcpp'
$installerType = 'EXE'
$url = 'http://freefr.dl.sourceforge.net/project/orwelldevcpp/Setup%20Releases/Dev-Cpp%205.4.2%20TDM-GCC%20x64%204.7.1%20Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes