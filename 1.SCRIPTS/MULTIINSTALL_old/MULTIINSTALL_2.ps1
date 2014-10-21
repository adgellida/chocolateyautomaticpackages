####multi-installer, select programs to install 
####v.2014.10.05-alpha

#Backup & Sync


#OS & Utilities
#'ultradefrag -pre','classic-shell','unchecky','OuiGuiChocolatey','ChocolateyGUI','ChocoPM.install -Pre','displayfusion','driverbooster','sumo','softwareinformer' | %{ cinst $_ }
#'flashplayerplugin','flashplayeractivex','kcleaner','littleregistrycleaner','ccenhancer','speedfan','crystaldiskinfo','easybcd','llftool' | %{ cinst $_ }
#'speccy','openhardwaremonitor','wudt','yumi','cyg-get','cnettechtracker','startmenureviver','startmenu8' | %{ cinst $_ }
#'hpusbdisk','systemninja','bleachbit','genymotion','mousecontroller','tinytask','wassapp','advancedsystemcarefree','tuneuputilities' | %{ cinst $_ }
#'cpu-z','virtualbox','virtualbox.extensionpack','greenshot' | %{ cinst $_ }
#'openal','ghostscript','winpcap','webpi','aria2','wuinstall' | %{ cinst $_ }
#'windowsrepair','simplesystemtweaker','advancedsystemtweaker','rmprepusb' | %{ cinst $_ }

#Security & Privacy
#'malwarebytes','adwcleaner','avastbrowsercleanup','winlockless','Secunia.PSI','nmap','truecrypt','tor-browser','piratebrowser -Pre','bitdefenderavfree' | %{ cinst $_ }
#'jrt','spybot','superantispyware' | %{ cinst $_ }

#CD/DVD Tools
#'daemontoolslite' | %{ cinst $_ }

#Photos & Graphics
#'designsparkpcb','kicad','fritzing' | %{ cinst $_ }

#Audio & Music & Videos & Movies
#'adobeshockwaveplayer','adobeair','unitywebplayer','songr','spotify','openshark' | %{ cinst $_ }

#Videos & Movies


#Audio & Music & Videos & Movies
#'k-litecodecpackbasic','cccp' | %{ cinst $_ }
#'windowsessentials','atubecatcher' | %{ cinst $_ }

#Development
#'javaruntime' | %{ cinst $_ }
#'geany','meld','winmerge' | %{ cinst $_ }
#'Dogtail.DotNet3.5SP1','DotNet4.5','DotNet4.0' | %{ cinst $_ }
#'arduinoide','arduinoide -Version 1.5.5-beta -Pre' | %{ cinst $_ }
#'orwelldevcpp','smartgit','unity' | %{ cinst $_ }

#Web Browsers
#'googlechrome.dev' | %{ cinst $_ }
#'chromium','midori-browser' | %{ cinst $_ }
#'firefox','aurora' | %{ cinst $_ }
#'adblockplusfirefox','adblockplusie','adblockplusopera' | %{ cinst $_ }
#'adblockpluschrome' | %{ cinst $_ }

#Social
#'messengerreviver','viber','trillian','line' | %{ cinst $_ }

#File Management
#'filezilla','jdownloader','peazip','windirstat','mucommander' | %{ cinst $_ }

#File Sharing
#'utorrent','ares','emule','wget' | %{ cinst $_ }

#News & Books


#Office & Productivity
#'adobereader' | %{ cinst $_ }	#by now in english

#Games
#'mro','xonotic','redeclipse','tiggit','heroesofnewerth' | %{ cinst $_ }


#Base command official feed

#'pkg1','pkg2','pkgN' | %{ cinst $_ }

#Base command techshareroom feed - INOPERABLE BY NOW

#'packagename' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }