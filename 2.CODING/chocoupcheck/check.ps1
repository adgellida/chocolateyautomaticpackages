

$path=D:\PERSONAL\PROYECTOS\github\chocolateyautomaticpackagesalpha\chocoupcheck-CODING\appschecker

Get-ChildItem $path -Filter *.ps1 | ForEach-Object { & $_.FullName }