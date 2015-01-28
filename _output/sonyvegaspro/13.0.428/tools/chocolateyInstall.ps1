$packageName = 'sonyvegaspro'
$installerType = 'EXE'
$url = 'http://dspcdn.sonycreativesoftware.com/secure/vegaspro13.0.428.exe?e=1417415042&h=cf518c4bf28d44ee221260cc52b93390&file=.exe'
$silentArgs = '/q /s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}