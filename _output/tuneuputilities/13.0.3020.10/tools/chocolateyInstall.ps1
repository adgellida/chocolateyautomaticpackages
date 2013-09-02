$packageName = 'tuneuputilities'
$installerType = 'EXE'
$LCID = (Get-Culture).LCID
$urles = 'http://download.tune-up.com/TUU2013/1004476/TuneUpUtilities2013_es-ES.exe'
$urlesmx = 'http://download.tune-up.com/TUU2013/1004422/TuneUpUtilities2013_es-MX.exe'
$urlfr = 'http://download.tuneup.fr/TUU2013/1004426/TuneUpUtilities2013_fr-FR.exe'
$urlde = 'http://download.tuneup.de/TUU2013/1004423/TuneUpUtilities2013_de-DE.exe'
$urlit = 'http://download.tune-up.com/TUU2013/1004477/TuneUpUtilities2013_it-IT.exe'
$urlptpt = 'http://download.tune-up.com/TUU2013/1004529/TuneUpUtilities2013_pt-PT.exe'
$urlptbr = 'http://download.tune-up.com/TUU2013/1004479/TuneUpUtilities2013_pt-BR.exe'
$urlnl = 'http://download.tune-up.com/TUU2013/1004481/TuneUpUtilities2013_nl-NL.exe'
$urlpl = 'http://download.tune-up.com/TUU2013/1004487/TuneUpUtilities2013_pl-PL.exe'
$urlru = 'http://download.tune-up.com/TUU2013/1004488/TuneUpUtilities2013_ru-RU.exe'
$urlcs = 'http://download.tune-up.com/TUU2013/1004531/TuneUpUtilities2013_cs-CZ.exe'
$urlengb = 'http://download.tune-up.com/TUU2013/1004425/TuneUpUtilities2013_en-GB.exe'
$urlenus = 'http://download.tune-up.com/TUU2013/1004424/TuneUpUtilities2013_en-US.exe'

$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

if($LCID -eq "3082"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urles"  -validExitCodes $validExitCodes}
elseif($LCID -eq "2058"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlesmx"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1036"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlfr"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1031"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlde"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1040"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlit"  -validExitCodes $validExitCodes}
elseif($LCID -eq "2070"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlptpt"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1046"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlptbr"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1043"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlnl"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1030"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlpl"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1049"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlru"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1029"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlcs"  -validExitCodes $validExitCodes}
elseif($LCID -eq "2057"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlengb"  -validExitCodes $validExitCodes}
else{Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlenus"  -validExitCodes $validExitCodes}

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx