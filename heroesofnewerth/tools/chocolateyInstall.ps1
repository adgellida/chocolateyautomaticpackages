$packageName = '{{PackageName}}'
$fileType = 'EXE'
$url = 'http://dl.heroesofnewerth.com/HoNClient-3.1.6.exe'
#$url = 'http://dl.heroesofnewerth.com/HoNClient-{version}.exe'
#$url = '{{DownloadUrl}}'
$silentArgs = '/S'
$packageVersion = '{{PackageVersion}}'
$tempDir = "$env:TEMP\chocolatey\$packageName"
$file = "$tempDir\HoNClient-$packageVersion.exe"
$executable = "C:\Program Files (x86)\Heroes of Newerth\hon.exe"

wget -P "$tempDir" -c -t 0 --timeout=30 --waitretry=30 "$url"

if(Test-Path $executable)
{
& "C:\Program Files (x86)\Heroes of Newerth\hon_update.exe"
}
else
{
Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file
}

