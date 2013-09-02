$packageName = '{{PackageName}}'
$installerType = 'EXE'
#$url = 'http://software-files-a.cnet.com/s/software/12/69/36/90/CNET_TechTracker_2_1_0_73_Setup.exe?lop=link&ptype=3001&ontid=18513&siteId=4&edId=3&spi=ff05602f73371299b6d8963e6e02593b&pid=12693690&psid=10912909&token=1375435914_ec5e5ebd4244ede3b0ede9f9f7a6131d&fileName=CNET_TechTracker_2_1_0_73_Setup.exe'
$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes