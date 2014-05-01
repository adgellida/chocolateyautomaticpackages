$packageName = 'downloadapp'
$installerType = 'EXE'
$url = 'http://download1351.mediafire.com/yyr3057ygadg/g39toc4n66oaxi7/DownloadApp_1_6_6_175d_Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes