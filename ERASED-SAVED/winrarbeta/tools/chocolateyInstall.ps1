$packageName = 'winrarbeta'
$installerType = 'EXE'
$silentArgs = '/s'
#$url = 'http://www.rarlab.com/rar/winrar-x64-50b8.exe'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$LCID = (Get-Culture).LCID

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
 
#Arabic
if(($LCID -eq "1025") -or ($LCID -eq "5121") -or ($LCID -eq "15361") -or ($LCID -eq "3073") -or ($LCID -eq "2049") -or ($LCID -eq "11265") -or ($LCID -eq "13313") -or ($LCID -eq "12289") -or ($LCID -eq "4097") -or ($LCID -eq "6145") -or ($LCID -eq "8193") -or ($LCID -eq "16385") -or ($LCID -eq "10241") -or ($LCID -eq "7169") -or ($LCID -eq "14337") -or ($LCID -eq "9217")){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8a.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8a.exe"
  }
}

#Armenian
elseif($LCID -eq "1067"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8am.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8am.exe"
  }
}

#Bulgarian
elseif($LCID -eq "1026"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8bg.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8bg.exe"
  }
}

#Chinese Traditional
elseif(($LCID -eq "2052") -or ($LCID -eq "4100") -or ($LCID -eq "1028") -or ($LCID -eq "3076") -or ($LCID -eq "5124")){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8tc.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8tc.exe"
  }
}

#Finnish
elseif($LCID -eq "1035"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8fi.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8fi.exe"
  }
}

#French
elseif($LCID -eq "1036"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-5b8fr.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar5b8fr.exe"
  }
}

#Hungarian
elseif($LCID -eq "1038"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8hu.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8hu.exe"
  }
}

#Lithuanian
elseif($LCID -eq "1063"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8lt.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8lt.exe"
  }
}

#Persian
elseif($LCID -eq "1065"){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8prs.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8prs.exe"
  }
}

#Portuguese Brazilian
elseif(($LCID -eq "1046") -or ($LCID -eq "2070")){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8br.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8br.exe"
  }
}

#Russian
elseif(($LCID -eq "1049") -or ($LCID -eq "2073")){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8ru.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8ru.exe"
  }
}

#Swedish
elseif(($LCID -eq "1053") -or ($LCID -eq "2077")){
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8sw.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8sw.exe"
  }
}

#English
else{
if ($is64bit) {
    $url = 'http://www.rarlab.com/rar/winrar-x64-50b8.exe'
  } else {
    $url = "http://www.rarlab.com/rar/wrar50b8.exe"
  }
}

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx