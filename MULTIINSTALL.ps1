####multi-installer, select programs to install 
####v.2013.08.18 alpha 12:20 GMT+1

####Advices
#TECHSHARE ROOM FEED - sufix "_tsr" to differenciate it from feed oficial - tonigellida apports his packages

#Backup & Sync
#'goodsync_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#OS & Utilities
'ccleaner','sumo','softwareinformer','teamviewer','notepadplusplus.install','speccy','silverlight' | %{ cinst $_ }
#'classic-shellbeta','classic-shell' | %{ cinst $_ }
#'openhardwaremonitor','microsoft.isobackuptool','yumi','cyg-get','cnettechtracker' | %{ cinst $_ }
#'kcleaner','littleregistrycleaner','ccenhancer','speedfan','crystaldiskinfo','easybcd','llftool' | %{ cinst $_ }
#'startmenureviver','startmenu8','driverbooster' | %{ cinst $_ }
#'hpusbdisk','systemninja','bleachbit','genymotion','mousecontroller','tinytask','wassapp','advancedsystemcarefree','tuneuputilities' | %{ cinst $_ }
#'windowsrepair','simplesystemtweaker','advancedsystemtweaker','rmprepusb' | %{ cinst $_ }
#'flashplayerplugin','flashplayeractivex','cpu-z','virtualbox','greenshot' | %{ cinst $_ }
#'openal','ghostscript','winpcap','webpi','aria2' | %{ cinst $_ }
#'dumeter_tsr','hdtunepro_tsr','unlocker_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }
#'rollbackrx_tsr','startisback_tsr','drivergenius_tsr','aida64extreme_tsr','partitionwizard_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Security & Privacy
#'spybot','superantispyware','avastbrowsercleanup','winlockless','malwarebytes','Secunia.PSI','nmap','truecrypt','tor-browser','piratebrowser' | %{ cinst $_ }
#'kasperskyanti-virus_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#CD/DVD Tools
'imgburn' | %{ cinst $_ }
#'daemontoolslite' | %{ cinst $_ }
#'ultraiso_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Photos & Graphics
#'designsparkpcb','kicad','fritzing' | %{ cinst $_ }
#'adobephotoshop_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Audio & Music
#'songr','spotify' | %{ cinst $_ }

#Videos & Movies
'vlc' | %{ cinst $_ }

#Audio & Music & Videos & Movies
'adobeshockwaveplayer','adobeair','k-litecodecpackbasic','unitywebplayer' | %{ cinst $_ }
#'windowsessentials','atubecatcher' | %{ cinst $_ }
#'adobepremierepro_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Development
'javaruntime' | %{ cinst $_ }
#'Dogtail.DotNet3.5SP1','DotNet4.5','DotNet4.0' | %{ cinst $_ }
#'geany','meld','winmerge' | %{ cinst $_ }
#'arduinoide','arduinoidebeta','arduinoidenightly' | %{ cinst $_ }
#'orwelldevcpp','smartgit','unity' | %{ cinst $_ }

#Web Browsers
'googlechrome.dev' | %{ cinst $_ }
#'googlechrome','chromium','midori-browser' | %{ cinst $_ }
'adblockpluschrome','adblockplusie' | %{ cinst $_ }
#'adblockplusfirefox','adblockplusopera' | %{ cinst $_ }

#Social
#'messengerreviver','viber','trillian','line','skype' | %{ cinst $_ }

#File Management
#'filezilla','jdownloaderbeta','jdownloader','peazip','windirstat','mucommander' | %{ cinst $_ }
#'winrar_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#File Sharing
#'ares','utorrent','emule','wget' | %{ cinst $_ }

#News & Books



#Office & Productivity
'adobereader' | %{ cinst $_ }
#'microsoftoffice_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

#Games
#'mro','xonotic','redeclipse','tiggit','heroesofnewerth' | %{ cinst $_ }
#'streetsofrage_tsr' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }

##NOTES

#Not recommended to install, it isn't full versions or there's better alternatives - tonigellida packages

#'hdtune','drivergenius','rollbackrx','winrar' | %{ cinst $_ }
#'avastfreeantivirus','avgantivirusfree','avirafreeantivirus','kasperskyanti-virus' | %{ cinst $_ }
#'ultraiso','goodsync','dumeter','aida64extreme' | %{ cinst $_ }

#Base command

#'pkg1','pkg2','pkgN' | %{ cinst $_ }
