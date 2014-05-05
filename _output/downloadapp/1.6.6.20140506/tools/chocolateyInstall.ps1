$packageName = 'downloadapp'
$installerType = 'EXE'
$url = 'https://vgdmhw.dm2301.livefilestore.com/y2mPaRT0kJjjb2hA2Zf0TUsdLfYHi9D5S0aixE_dQPczKPfjuiv9T5TTIrfit7BBdspYp3xrnInt2PqRVmzGlH-Eynvqjk9JlJv9O9v6Gzh-EM/DownloadApp_1_6_6_175d_Setup.exe?download&psid=1'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes