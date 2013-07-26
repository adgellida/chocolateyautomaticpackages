$packageName = 'heroesofnewerth'
$fileType = 'EXE'
$url = 'http://dl.heroesofnewerth.com/HoNClient-3.1.6.exe'
$silentArgs = '/S'
$tempDir = "$env:TEMP\chocolatey\$packageName"
$file = "$tempDir\HoNClient-3.1.6.exe"

wget -P "$tempDir" -c -t 0 --timeout=30 --waitretry=30 "$url"
Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file

