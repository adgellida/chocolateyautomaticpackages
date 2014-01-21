####multi-installer, select programs to install 
####v.2014.01.21-alpha

#Backup & Sync
#'goodsync' | %{ cinst $_ }

#OS & Utilities
'ccleaner','teamviewer','notepadplusplus.install','silverlight','classic-shell' | %{ cinst $_ }
#'displayfusion','driverbooster','sumo','softwareinformer' | %{ cinst $_ }
#'clover','speccy','openhardwaremonitor','wudt','yumi','cyg-get','cnettechtracker' | %{ cinst $_ }
#'kcleaner','littleregistrycleaner','ccenhancer','speedfan','crystaldiskinfo','easybcd','llftool' | %{ cinst $_ }
#'startmenureviver','startmenu8' | %{ cinst $_ }
#'hpusbdisk','systemninja','bleachbit','genymotion','mousecontroller','tinytask','wassapp','advancedsystemcarefree','tuneuputilities' | %{ cinst $_ }
#'windowsrepair','simplesystemtweaker','advancedsystemtweaker','rmprepusb' | %{ cinst $_ }
#'flashplayerplugin','flashplayeractivex','cpu-z','virtualbox','virtualbox.extensionpack','greenshot' | %{ cinst $_ }
#'openal','ghostscript','winpcap','webpi','aria2','wuinstall' | %{ cinst $_ }

#Security & Privacy
#'spybot','superantispyware','avastbrowsercleanup','winlockless','malwarebytes','Secunia.PSI','nmap','truecrypt','tor-browser','piratebrowser -Pre','adwcleaner','jrt','bitdefenderavfree' | %{ cinst $_ }

#CD/DVD Tools
'imgburn' | %{ cinst $_ }
#'daemontoolslite' | %{ cinst $_ }

#Photos & Graphics
#'designsparkpcb','kicad','fritzing' | %{ cinst $_ }

#Audio & Music
#'songr','spotify','openshark' | %{ cinst $_ }

#Videos & Movies
'vlc' | %{ cinst $_ }

#Audio & Music & Videos & Movies
'adobeshockwaveplayer','adobeair','unitywebplayer' | %{ cinst $_ }
#'k-litecodecpackbasic','cccp' | %{ cinst $_ }
#'windowsessentials','atubecatcher' | %{ cinst $_ }

#Development
#'javaruntime' | %{ cinst $_ }
#'Dogtail.DotNet3.5SP1','DotNet4.5','DotNet4.0' | %{ cinst $_ }
#'geany','meld','winmerge' | %{ cinst $_ }
#'arduinoide','arduinoide -Version 1.5.5-beta -Pre' | %{ cinst $_ }
#'orwelldevcpp','smartgit','unity' | %{ cinst $_ }

#Web Browsers
#'googlechrome.dev' | %{ cinst $_ }
#'googlechrome','chromium','midori-browser' | %{ cinst $_ }
#'firefox','aurora' | %{ cinst $_ }
#'adblockplusfirefox','adblockplusie','adblockplusopera' | %{ cinst $_ }
#'adblockpluschrome' | %{ cinst $_ }

#Social
#'messengerreviver','viber','trillian','line','skype' | %{ cinst $_ }

#File Management
#'filezilla','jdownloader','peazip','windirstat','mucommander' | %{ cinst $_ }

#File Sharing
#'ares','utorrent','emule','wget' | %{ cinst $_ }

#News & Books


#Office & Productivity
#'adobereader' | %{ cinst $_ }	#by now in english

#Games
#'mro','xonotic','redeclipse','tiggit','heroesofnewerth' | %{ cinst $_ }


#Base command official feed

#'pkg1','pkg2','pkgN' | %{ cinst $_ }

#Base command techshareroom feed - INOPERABLE BY NOW

#'packagename' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }