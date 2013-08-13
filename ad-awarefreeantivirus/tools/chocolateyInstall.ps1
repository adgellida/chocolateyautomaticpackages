$packageName = 'ad-awarefreeantivirus'
$installerType = 'msi'
#$url = 'http://download100.lavasoft.com/adaware/updates/Ad-Aware_Antivirus_Free_Setup_10.5.3.4405.msi'
$url = 'http://fs33.filehippo.com/3043/326169fbbd6f4e23a43eeb99578bd423/Ad-Aware_Antivirus_Free_Setup_10.5.2.4379.msi'
#$url = 'http://download100.lavasoft.com/adaware/updates/Ad-Aware_Antivirus_Free_Setup_{version}.msi'
#$url = '{{DownloadUrl}}'
$silentArgs = '/update /quiet /qb /promptrestart'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#$installDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
#$file = Join-Path $installDir 'Ad-Aware.msi'
#Get-ChocolateyWebFile $packageName $file $url

#msiexec /i Ad-Aware_Antivirus_Free_Setup_10.5.3.4405.msi /quiet /qb/ /promptrestart
#msiexec /i Ad-Aware_Antivirus_Free_Setup_10.5.3.4405.msi /passive /qb/ /promptrestart
#msiexec /i Ad-Aware_Antivirus_Free_Setup_10.5.3.4405.msi /quiet /qb/ /norestart
#msiexec /i Ad-Aware_Antivirus_Free_Setup_10.5.3.4405.msi /passive /qb/ /norestart