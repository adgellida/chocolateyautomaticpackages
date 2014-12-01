#Only compatible with Windows 7 and upper

$versioninstalledpath = "C:\Users\Tonin\AppData\Local\Google\Chrome\User Data\Default\Extensions\cfhdojbkjhnklbpkdaibdccddilifddb"

$versioninstalled = Get-ChildItem $versioninstalledpath | Sort CreationTime | Select-Object -first 1 | Select -expand Name

$versioninstalled = $versioninstalled.Substring(0,$versioninstalled.Length-2)

$versioninstalled