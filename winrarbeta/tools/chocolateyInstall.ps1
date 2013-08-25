$packageName = 'winrarbeta'
$installerType = 'EXE'
$silentArgs = '/s'
#$url = 'http://www.rarlab.com/rar/winrar-x64-50b8.exe'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$LCID = (Get-Culture).LCID
$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

##Arabic
if(($LCID -eq "1025") -and ($LCID -eq "5121") -and ($LCID -eq "15361") -and ($LCID -eq "3073") -and ($LCID -eq "2049") -and ($LCID -eq "11265") -and ($LCID -eq "13313") -and ($LCID -eq "12289") -and ($LCID -eq "4097") -and ($LCID -eq "6145") -and ($LCID -eq "8193") -and ($LCID -eq "16385") -and ($LCID -eq "10241") -and ($LCID -eq "7169") -and ($LCID -eq "14337") -and ($LCID -eq "9217")){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8a.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8a.exe'
	}
}

##Armenian
elseif($LCID -eq "1067"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8am.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8am.exe'
	}
}

##Bulgarian
elseif($LCID -eq "1026"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8bg.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8bg.exe'
	}
}

##Chinese Traditional
elseif(($LCID -eq "2052") -and ($LCID -eq "4100") -and ($LCID -eq "1028") -and ($LCID -eq "3076") -and ($LCID -eq "5124")){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8tc.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8tc.exe'
	}
}

##English
elseif(($LCID -eq "1033") -and ($LCID -eq "2057")){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8.exe'
	}
}

##Finnish
elseif($LCID -eq "1035"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8fi.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8fi.exe'
	}
}

##French
elseif($LCID -eq "1036"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-5b8fr.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar5b8fr.exe'
	}
}

##Hungarian
elseif($LCID -eq "1038"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8hu.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8hu.exe'
	}
}

##Lithuanian
elseif($LCID -eq "1063"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8hu.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8lt.exe'
	}
}

##Persian
elseif($LCID -eq "1065"){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8prs.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8prs.exe'
	}
}

##Portuguese Brazilian
elseif(($LCID -eq "1046") -and ($LCID -eq "2070")){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8br.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8br.exe'
	}
}

##Russian
elseif(($LCID -eq "1049") -and ($LCID -eq "2073")){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-500b8ru.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar500b8ru.exe'
	}
}
##Swedish
elseif(($LCID -eq "1053") -and ($LCID -eq "2077")){
if ($is64bit) {
$url = 'http://www.rarlab.com/rar/winrar-x64-50b8sw.exe'
	} else {
$url = 'http://www.rarlab.com/rar/wrar50b8sw.exe'
	}
}

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx