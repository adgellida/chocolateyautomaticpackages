####multi-installer, select programs to install 
####v.2013.07.21 alpha 13:22 GMT+1

##NEEDS UPDATING!! WAIT FOR A NEW VERSION

############OFFICIAL CHOCOLATEY FEED

##Recommended

'utorrent','adobereader','adobeair' | %{ cinst $_ }
'javaruntime' | %{ cinst $_ }
#'teamviewer','filezilla' | %{ cinst $_ }
'silverlight','notepadplusplus.install','vlc' | %{ cinst $_ }

##Interesting

#'OpenHardwareMonitor','microsoft.isobackuptool' | %{ cinst $_ }
#'flashplayerplugin','flashplayeractivex' | %{ cinst $_ }
#'skype','speccy','spotify','smartgit','Secunia.PSI','greenshot','windirstat' | %{ cinst $_ }
#'imgburn' | %{ cinst $_ }
#'yumi','nmap','truecrypt','tor-browser','cyg-get','microsoft.isobackuptool' | %{ cinst $_ }

##Optionals

'googlechrome.dev' | %{ cinst $_ }
#'virtualbox','openal' | %{ cinst $_ }
#'midori-browser','peazip','cpu-z','trillian','line','chromium' | %{ cinst $_ }

##Recommended - tonigellida packages

'k-litecodecpackbasic','unitywebplayer','ccleaner' | %{ cinst $_ }

##Interesting - tonigellida packages

'adobeshockwaveplayer' | %{ cinst $_ }
#'kcleaner','sumo','littleregistrycleaner','atubecatcher' | %{ cinst $_ }
#'songr','spybot','superantispyware','ccenhancer','speedfan' | %{ cinst $_ }
#'avastbrowsercleanup','crystaldiskinfo','easybcd','llftool','winlockless' | %{ cinst $_ }
#'messengerreviver','hpusbdisk','malwarebytes','systemninja','bleachbit','genymotion' | %{ cinst $_ }
#'mousecontroller','tinytask','wassapp','viber','advancedsystemcarefree','oswelldevcpp','tuneuputilities' | %{ cinst $_ }
#'driverbooster','startmenu8' | %{ cinst $_ }
#'windowsrepair','simplesystemtweaker','advancedsystemtweaker','rmprepusb' | %{ cinst $_ }

##Optionals - tonigellida packages

#'xonotic','redeclipse','geany','mro','ares','meld','winmerge','emule','startmenureviver' | %{ cinst $_ }
#'tiggit','daemontoolslite','mucommander','windowsessentials' | %{ cinst $_ }
#'arduinoide','arduinoide -Version 1.5.2.20130614-beta','arduinoide -Version 1.5.3.20130614-nightly' | %{ cinst $_ }
#'designsparkpcb' | %{ cinst $_ }

#Not recommended to install, it isn't full versions or there's better alternatives - tonigellida packages

#'hdtune','drivergenius','rollbackrx' | %{ cinst $_ }
#'avastfreeantivirus','avgantivirusfree','avirafreeantivirus','kasperskyanti-virus' | %{ cinst $_ }
#'ultraiso','goodsync','dumeter','aida64extreme' | %{ cinst $_ }

############TECHSHARE ROOM FEED - sufix "_tsr" to differenciate it from feed oficial - Realized by tonigellida

##Recommended

'wget_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
'winrar_tsr','jdownloader_tsr','aida64extreme_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

##Optionals
#'microsoftoffice_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'goodsync_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
'drivergenius_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'rollbackrx_tsr','startisback_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'adobephotoshop_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'dumeter_tsr','hdtunepro_tsr','aria2_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'partitionwizard_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }	#In official feed doesn't work
#'unlocker_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }	  #In official feed unlisted
#'streetsofrage_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'kasperskyanti-virus_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'ultraiso_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

##Coming soon on techshare room

#'adobepremierepro_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

##Coming soon on techshare room - not priority

#'amddriverlegacy','amddriver','nvidiadriver','googlecontactsync','htcusbdriver','hpsolutioncenter','teknomw3','punkbuster','realtekdriver','samsungusbdriver' | %{ cinst $_ }

#Base command

#'pkg1','pkg2','pkgN' | %{ cinst $_ }
