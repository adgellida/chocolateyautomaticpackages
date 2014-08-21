$packageName = 'mro'
$installerType = 'EXE'
$url = 'http://www.miniracingonline.com/descargas/exes/MiniRacingOnline_downloader.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
#$fileFullPath = "%userprofile%\Documents\MiniRacingOnline\mro_launcher.exe"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#Install-ChocolateyDesktopLink $fileFullPath