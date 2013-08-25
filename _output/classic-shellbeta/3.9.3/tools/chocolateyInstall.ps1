$packageName = 'classic-shellbeta'
$installerType = 'EXE'
#$url = 'http://classicshell.mediafire.com/download/{anchor1}.exe'
$url = 'http://classicshell.mediafire.com/download/uanzrzyccl7j3zx/ClassicShellSetup_3_9_3.exe'
$silentArgs = '/qn'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes