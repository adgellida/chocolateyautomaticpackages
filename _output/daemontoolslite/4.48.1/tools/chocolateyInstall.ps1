$packageName = 'daemontoolslite'
$installerType = 'EXE'
$url = 'http://eu-uk1.disc-tools.com/request?p=f4c6bdb5477afdcfee6b9c02d45fdfd9/DTLite4481-0347'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes