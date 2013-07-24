$packageName = 'daemontoolslite'
$installerType = 'EXE'
$url = 'http://mirror09.soft24.com/getfile.php?p=http://eu-uk1.disc-tools.com/0db8c0ff97480d5347b08c99fbb56ad6/DTLite4471-0333.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes