$packageName = 'windowsessentials'
$installerType = 'EXE'
$LCID = (Get-Culture).LCID
$urles = 'http://wl.dlservice.microsoft.com/download/4/B/6/4B6D002A-3616-4D97-9D3A-80BD9E2CCB27/es/wlsetup-web.exe'
$urlfr = 'http://wl.dlservice.microsoft.com/download/E/5/D/E5D39079-7BF5-40E5-A321-D5884BA146FB/fr/wlsetup-web.exe'
$urlde = 'http://wl.dlservice.microsoft.com/download/4/6/9/469F489D-81BB-4881-968A-26181EFBC17A/de/wlsetup-web.exe'
$urlit = 'http://wl.dlservice.microsoft.com/download/8/0/C/80CC511B-5C9E-41D5-97BC-C7B29CB81953/it/wlsetup-web.exe'
$urlptpt = 'http://wl.dlservice.microsoft.com/download/A/3/1/A3127FE3-BB20-4F91-A957-C0C0A3359A2B/pt-pt/wlsetup-web.exe'
$urlptbr = 'http://wl.dlservice.microsoft.com/download/3/0/5/30539D9E-350D-48EE-A1EE-C89135FB89C8/pt-br/wlsetup-web.exe'
$urlca = 'http://wl.dlservice.microsoft.com/download/4/0/9/40901E1B-A4CA-42BF-8583-FA2C7B9BA70C/ca/wlsetup-web.exe'
$urlnl = 'http://wl.dlservice.microsoft.com/download/B/F/0/BF0939B7-1952-41EC-BADB-4B91481CA8B3/nl/wlsetup-web.exe'
$urlda = 'http://wl.dlservice.microsoft.com/download/F/B/A/FBADA2DA-9DB3-4315-B1A5-411834BBCB59/da/wlsetup-web.exe'
$urlengb = 'http://wl.dlservice.microsoft.com/download/0/A/0/0A040542-7437-40CD-9BD1-F0ECA8E62423/en-gb/wlsetup-web.exe'
$urlenus = 'http://wl.dlservice.microsoft.com/download/A/1/0/A1018C6C-9E93-42A8-A87F-E3E1D0A8322F/en/wlsetup-web.exe'

$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

if($LCID -eq "3082"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urles"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1036"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlfr"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1031"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlde"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1040"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlit"  -validExitCodes $validExitCodes}
elseif($LCID -eq "2070"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlptpt"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1046"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlptbr"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1027"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlca"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1043"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlnl"  -validExitCodes $validExitCodes}
elseif($LCID -eq "1030"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlda"  -validExitCodes $validExitCodes}
elseif($LCID -eq "2057"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlengb"  -validExitCodes $validExitCodes}
else{Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlenus"  -validExitCodes $validExitCodes}

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx