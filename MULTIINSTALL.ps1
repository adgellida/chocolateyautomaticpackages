####multi-installer, select programs to install 
####v.2013.08.07 alpha 00:00 GMT+1

####Advices
#TECHSHARE ROOM FEED - sufix "_tsr" to differenciate it from feed oficial - Realized by tonigellida

#Backup & Sync
#'goodsync_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#OS & Utilities
#'OpenHardwareMonitor','microsoft.isobackuptool' | %{ cinst $_ }
#'yumi','nmap','truecrypt','tor-browser','cyg-get' | %{ cinst $_ }
#'sumo','softwareinformer','cnettechtracker' | %{ cinst $_ }
#'ccleaner','kcleaner','littleregistrycleaner' | %{ cinst $_ }
#'ccenhancer','speedfan' | %{ cinst $_ }
#'crystaldiskinfo','easybcd','llftool' | %{ cinst $_ }
#'classicshell','startmenureviver' | %{ cinst $_ }
#'hpusbdisk','systemninja','bleachbit','genymotion' | %{ cinst $_ }
#'mousecontroller','tinytask','wassapp','advancedsystemcarefree','tuneuputilities' | %{ cinst $_ }
#'driverbooster','startmenu8' | %{ cinst $_ }
#'windowsrepair','simplesystemtweaker','advancedsystemtweaker','rmprepusb' | %{ cinst $_ }
#'silverlight','notepadplusplus.install','teamviewer' | %{ cinst $_ }
#'flashplayerplugin','flashplayeractivex' | %{ cinst $_ }
#'speccy','Secunia.PSI','greenshot', | %{ cinst $_ }
#'cpu-z','virtualbox','openal' | %{ cinst $_ }
#'unlocker_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }	  #In official feed unlisted
#'dumeter_tsr','hdtunepro_tsr','aria2_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'partitionwizard_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }	#In official feed doesn't work
#'rollbackrx_tsr','startisback_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'drivergenius_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'aida64extreme_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Security & Privacy
#'spybot','superantispyware','avastbrowsercleanup','winlockless' | %{ cinst $_ }
#'malwarebytes' | %{ cinst $_ }
#'kasperskyanti-virus_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#CD/DVD Tools
#'imgburn' | %{ cinst $_ }
#'ultraiso_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'daemontoolslite' | %{ cinst $_ }

#Photos & Graphics
#'designsparkpcb','kicad','fritzing' | %{ cinst $_ }
#'adobephotoshop_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Audio & Music
'songr','spotify' | %{ cinst $_ }

#Videos & Movies
'vlc' | %{ cinst $_ }

#Audio & Music & Videos & Movies
'adobeshockwaveplayer','adobeair','k-litecodecpackbasic','unitywebplayer' | %{ cinst $_ }
#'windowsessentials' | %{ cinst $_ }
#'atubecatcher' | %{ cinst $_ }
#'adobepremierepro_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Development
'javaruntime' | %{ cinst $_ }
#'Dogtail.DotNet3.5SP1','DotNet4.5','DotNet4.0' | %{ cinst $_ }
#'geany','meld','winmerge' | %{ cinst $_ }
#'arduinoide','arduinoide -Version 1.5.2.20130614-beta','arduinoide -Version 1.5.3.20130614-nightly' | %{ cinst $_ }
#'orwelldevcpp','smartgit','unity' | %{ cinst $_ }

#Web Browsers
'googlechrome' | %{ cinst $_ }
#'googlechrome.dev' | %{ cinst $_ }
#'midori-browser','chromium' | %{ cinst $_ }
#'adblockpluschrome','adblockplusie','adblockplusfirefox','adblockplusopera' | %{ cinst $_ }

#Social
#'messengerreviver','viber' | %{ cinst $_ }
#'trillian','line','skype' | %{ cinst $_ }

#File Management
#'winrar' | %{ cinst $_ }
#'filezilla' | %{ cinst $_ }
#'winrar_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'jdownloader_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'peazip' | %{ cinst $_ }
#'windirstat' | %{ cinst $_ }
#'mucommander' | %{ cinst $_ }

#File Sharing
#'ares','utorrent','emule' | %{ cinst $_ }
#'wget_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#News & Books



#Office & Productivity
'adobereader' | %{ cinst $_ }
#'microsoftoffice_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Games
#'mro','xonotic','redeclipse','tiggit','heroesofnewerth' | %{ cinst $_ }
#'streetsofrage_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

##NOTES

#Not recommended to install, it isn't full versions or there's better alternatives - tonigellida packages

#'hdtune','drivergenius','rollbackrx' | %{ cinst $_ }
#'avastfreeantivirus','avgantivirusfree','avirafreeantivirus','kasperskyanti-virus' | %{ cinst $_ }
#'ultraiso','goodsync','dumeter','aida64extreme' | %{ cinst $_ }

##Coming soon on techshare room - not priority

#'amddriverlegacy','amddriver','nvidiadriver','googlecontactsync','htcusbdriver','hpsolutioncenter','teknomw3','punkbuster','realtekdriver','samsungusbdriver' | %{ cinst $_ }

#Base command

#'pkg1','pkg2','pkgN' | %{ cinst $_ }
