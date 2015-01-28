#Only support Google Chrome stable

$workdir = "$env:homedrive$env:homepath\AppData\Local\Google\Chrome\User Data\Default\Extensions\cfhdojbkjhnklbpkdaibdccddilifddb\*_0"
$workdir = "%userprofile%\AppData\Local\Google\Chrome\UserData\Default\Extensions\cfhdojbkjhnklbpkdaibdccddilifddb"
$Txt = "$workdir\Sample.txt"    
Function GetAsmName($rTxt)
{    
$captures = gc $rTxt | 
            select-string -Pattern '(?<=AssemblyName=)([^;|,]*)' -allmatches |
            select -expa matches | select -expa value    
Set-Content -path $workdir\Output.txt -value $captures
}

GetAsmName $Txt