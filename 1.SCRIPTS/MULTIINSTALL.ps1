####multi-installer, select programs to install 
####v.2014.05.24-alpha

#Backup & Sync
#'goodsync' | %{ cinst $_ }

#OS & Utilities
'ccleaner','teamviewer','notepadplusplus.install','silverlight','unchecky' | %{ cinst $_ }
'classic-shell' | %{ cinst $_ }

#Security & Privacy
#'malwarebytes','adwcleaner','jrt','spybot','superantispyware' | %{ cinst $_ }

#CD/DVD Tools
'imgburn' | %{ cinst $_ }

#Photos & Graphics


#Audio & Music


#Videos & Movies
'vlc' | %{ cinst $_ }

#Audio & Music & Videos & Movies
#'adobeshockwaveplayer','adobeair','unitywebplayer' | %{ cinst $_ }

#Development


#Web Browsers
'googlechrome' | %{ cinst $_ }
'adblockpluschrome' | %{ cinst $_ }

#Social
#'skype' | %{ cinst $_ }

#File Management


#File Sharing


#News & Books


#Office & Productivity
'sumatrapdf.install' | %{ cinst $_ }

#Games


#Base command official feed

#'pkg1','pkg2','pkgN' | %{ cinst $_ }

#Base command techshareroom feed - INOPERABLE BY NOW

#'packagename' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }