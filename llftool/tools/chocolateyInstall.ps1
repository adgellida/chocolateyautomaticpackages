$packageName = 'llftool'
$installerType = 'EXE'
$url = 'http://hddguru.com/software/HDD-LLF-Low-Level-Format-Tool/HDDLLFsetup.4.30.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes