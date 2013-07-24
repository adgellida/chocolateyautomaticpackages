$packageName = 'avastfreeantivirus'
$installerType = 'EXE'
$url = 'http://files.avast.com/iavs5x/avast_free_antivirus_setup.exe'
$silentArgs = '/silent'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes