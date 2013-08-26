$packageName = 'heroesofnewerth'
$installerType = 'EXE'
#$url = 'http://dl.heroesofnewerth.com/HoNClient-{version}.exe'
$url = 'http://dl.heroesofnewerth.com/HoNClient-3.2.1.2.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

if(Test-Path "${Env:ProgramFiles(x86)}\Heroes of Newerth\hon.exe"){
& "${Env:ProgramFiles(x86)}\Heroes of Newerth\hon.exe" -update
}

elseif(Test-Path "${Env:ProgramFiles}\Heroes of Newerth\hon.exe"){
& "${Env:ProgramFiles}\Heroes of Newerth\hon.exe" -update
}

else{
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
}

