$packageName = 'kasperskyanti-virus'
$installerType = 'EXE'
$urles = 'http://products.kaspersky-labs.com/products/spanish/homeuser/kav2013/kav13.0.1.4190es-es.exe'
$urlfr = 'http://products.kaspersky-labs.com/products/french/homeuser/kav2013/kav13.0.1.4190fr-fr.exe'
$urlde = 'http://products.kaspersky-labs.com/products/german/homeuser/kav2013/kav13.0.1.4190de-de.exe'
$urlit = 'http://products.kaspersky-labs.com/products/italian/homeuser/kav2013/kav13.0.1.4190it-it.exe'
$urlpt = 'http://products.kaspersky-labs.com/products/portuguese/homeuser/kav2013/kav13.0.1.4190pt-pt.exe'
$urlen = 'http://products.kaspersky-labs.com/products/english/homeuser/kav2013/kav13.0.1.4190abcdefEN_4395.exe'
$silentArgs = '/s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$language = (get-uiculture).TwoLetterISOLanguageName

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

if($language -eq "es"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urles"  -validExitCodes $validExitCodes}
elseif($language -eq "fr"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlfr"  -validExitCodes $validExitCodes}
elseif($language -eq "de"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlde"  -validExitCodes $validExitCodes}
elseif($language -eq "it"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlit"  -validExitCodes $validExitCodes}
elseif($language -eq "pt"){Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlpt"  -validExitCodes $validExitCodes}
else{Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$urlen"  -validExitCodes $validExitCodes}
