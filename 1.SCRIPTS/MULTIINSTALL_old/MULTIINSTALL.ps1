####multi-installer, select programs to install 
####v.2014.10.05-alpha

#Backup & Sync
#'goodsync' | %{ cinst $_ }

#OS & Utilities
'ccleaner','teamviewer','notepadplusplus.install','silverlight','clover','winrar' | %{ cinst $_ }

#Security & Privacy
'360ts' | %{ cinst $_ }

#CD/DVD Tools
#'imgburn' | %{ cinst $_ }

#Photos & Graphics


#Audio & Music


#Videos & Movies
'vlc' | %{ cinst $_ }

#Audio & Music & Videos & Movies


#Development


#Web Browsers
'google-chrome-x64' | %{ cinst $_ }
'adblockpluschrome' | %{ cinst $_ }
#'googlechrome' | %{ cinst $_ }

#Social
#'skype' | %{ cinst $_ }

#File Management


#File Sharing
'transmission-qt' | %{ cinst $_ }

#News & Books


#Office & Productivity
'sumatrapdf.install' | %{ cinst $_ }
'libreoffice' | %{ cinst $_ }

#Games


#Base command official feed

#'pkg1','pkg2','pkgN' | %{ cinst $_ }

#Base command techshareroom feed - INOPERABLE BY NOW

#'packagename' | %{ cinst $_ -Source http://www.myget.org/F/techshareroom/api/v2 }