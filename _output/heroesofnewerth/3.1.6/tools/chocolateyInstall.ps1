$packageName = 'heroesofnewerth'
$fileType = 'EXE'
$url = 'http://dl.heroesofnewerth.com/HoNClient-3.1.6.exe'
#$url = 'http://dl.heroesofnewerth.com/HoNClient-{version}.exe'
#$url = 'http://dl.heroesofnewerth.com/HoNClient-3.1.6.exe'
$silentArgs = '/S'
$packageVersion = '3.1.6'
$tempDir = "$env:TEMP\chocolatey\$packageName"
$file = "$tempDir\HoNClient-$packageVersion.exe"

wget -P "$tempDir" -c -t 0 --timeout=30 --waitretry=30 "$url"

# & $tempDir\HoNClient-{version}.exe /S

# if(Test-Path $file)
# {
# "File is Found"
# }
# else
# {
# "File is Missing"
# }

Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file