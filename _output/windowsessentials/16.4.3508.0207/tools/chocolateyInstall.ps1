$packageName = 'windowsessentials'
$installerType = 'EXE'
$LCID = (Get-Culture).LCID
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

##Spanish
if(($LCID -eq "3082") -or ($LCID -eq "1034")){
$url = '{{url_es}}'
}

##French
elseif($LCID -eq "1036"){
$url = '{{url_fr}}'
}

##German
elseif($LCID -eq "1031"){
$url = '{{url_de}}'
}

##Italian
elseif($LCID -eq "1040"){
$url = '{{url_it}}'
}

##Portuguese
elseif($LCID -eq "2070"){
$url = '{{url_pt-pt}}'
}

##Portuguese Brazilian
elseif($LCID -eq "1046"){
$url = '{{url_pt-br}}'
}

##Catalan
elseif($LCID -eq "1027"){
$url = '{{url_ca}}'
}

##Dutch
elseif($LCID -eq "1043"){
$url = '{{url_nl}}'
}

##Danish
elseif($LCID -eq "1030"){
$url = '{{url_da}}'
}

##Britain English
elseif($LCID -eq "2057"){
$url = '{{url_en-gb}}'
}

##United States English
else{
$url = '{{url_en}}'
}

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx