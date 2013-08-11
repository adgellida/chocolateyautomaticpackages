$packageName = 'line'
$installerType = 'EXE'
#$url = 'http://dl.desktop.line.naver.jp/naver/LINE/win/LineInst.exe'
$url = 'http://dl.desktop.line.naver.jp/naver/LINE/win/LineInst.exe'
$silentArgs = '/s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes