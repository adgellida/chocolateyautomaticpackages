$packageName = 'kicad'
$installerType = 'EXE'
$url = 'http://kicad.nosoftware.cz/windows/KiCad_testing-2014.10.03-BZR5161_Win_full_version.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$fileFullPath = "C:\KiCad\bin\kicad.exe"
$shortcut_to_modify = "$Home\Desktop\kicad.exe.lnk"
$shortcut_modified = "$Home\Desktop\KiCad.lnk"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

	if (Test-Path $shortcut_modified){
		Remove-Item $shortcut_modified
	}

#start C:\KiCad\bin\kicad.bat

Install-ChocolateyDesktopLink $fileFullPath

Rename-Item $shortcut_to_modify $shortcut_modified