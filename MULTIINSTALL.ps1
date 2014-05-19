####multi-installer, select programs to install 
####v.2014.05.19-alpha

#Backup & Sync
#'goodsync' | %{ cinst $_ }

#OS & Utilities
'ccleaner','teamviewer','notepadplusplus.install','silverlight','classic-shell','unchecky' | %{ cinst $_ }
#'ChocolateyGUI','driverbooster','sumo','softwareinformer' | %{ cinst $_ }
#'clover','speccy','openhardwaremonitor','yumi','crystaldiskinfo' | %{ cinst $_ }
#'flashplayerplugin','flashplayeractivex','virtualbox','virtualbox.extensionpack','greenshot' | %{ cinst $_ }

#Security & Privacy
#'spybot','superantispyware','malwarebytes','adwcleaner','jrt' | %{ cinst $_ }

#CD/DVD Tools
'imgburn' | %{ cinst $_ }
#'daemontoolslite' | %{ cinst $_ }

#Photos & Graphics


#Audio & Music
#'songr','spotify','openshark' | %{ cinst $_ }

#Videos & Movies
'vlc' | %{ cinst $_ }

#Audio & Music & Videos & Movies
'adobeshockwaveplayer','adobeair','unitywebplayer' | %{ cinst $_ }
#'k-litecodecpackbasic' | %{ cinst $_ }
#'windowsessentials','atubecatcher' | %{ cinst $_ }

#Development
#'javaruntime' | %{ cinst $_ }
#'geany','meld','winmerge' | %{ cinst $_ }

#Web Browsers
#'googlechrome' | %{ cinst $_ }
#'adblockpluschrome' | %{ cinst $_ }

#Social
#'skype' | %{ cinst $_ }

#File Management
#'filezilla','jdownloader','windirstat' | %{ cinst $_ }

#File Sharing
#'utorrent' | %{ cinst $_ }

#News & Books


#Office & Productivity
#'adobereader' | %{ cinst $_ }	#by now in english

#Games


#Base command official feed

#'pkg1','pkg2','pkgN' | %{ cinst $_ }

#Base command techshareroom feed - INOPERABLE BY NOW

#'packagename' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }