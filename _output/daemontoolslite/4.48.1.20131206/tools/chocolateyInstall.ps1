$packageName = 'daemontoolslite'
$installerType = 'EXE'
$url = 'http://dl.filehorse.com/win/cd-and-dvd-tools/daemon-tools/DAEMON-Tools-Lite-4.48.1.exe?st=77zV56kVppdk-H6D7zM4Zg&e=1386412364&fn=DTLite4481-0347.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes