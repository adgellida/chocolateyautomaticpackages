#### A collection of automatic packages pushed to chocolatey official feed

![](http://i.imgur.com/Tl52ASY.png)

RELEASE NOTES

* 27/11/14 - Converting all packages to "not checkables". Due to amount of work doing to "checkables".
* 21/11/14 - Bugfixing all the detected packages with problems.
* 20/11/14 - Moved all the icons to "icons" folder.
* 18/11/14 - Moved all the images to "images" folder.
* 21/09/14 - Updated checks on ketarin.
* 23/08/14 - There're a lot of manual packages, for testing causes or for impossibility to do it auto.
* 24/05/14 - Go to "1.SCRIPTS" folder and execute what you want. Packages are on "MULTIINSTALL.ps1" and on "MULTIINSTALL_2.ps1" there are extra packages.
* 04/01/14 - Updated daily (only auto packages) or asap.
* 06/12/13 - All versions works on windows vista, 7, 8, 8.1 etc. On xp wasn't tested 100% but works very very often. There're packages that don't do all the instructions (remove innecesary shortcuts), but the program is fully functional afterwards.

TO DO & DOING IT

* Do all packages "checksIfIsInstalled" - checkables if they are installed on system and not to install them if they exist. For example "cdex" package. With registry keys or executable version (prioritary, more quick).
* Change name on shortcuts in packages that are not installables (portables). For example "AdwCleaner" package. By now F5 to refresh desktop is required or re-enter on the session.

ON FUTURE

* Do a package (or that choco core integrates the ability) that checks all installed programs and install all the packages of them. If a new version is detected on choco installs them.
  If not a message is showed to contact to mantainer to update it.
* Integrate packages on chocolatey-coreteampackages.
* Do a choco policy to do all the packages the same way. Each type, each form, not substantial differences like now.

Causes of errors:

* My mistake, I'm human, not perfect.
* I don't have a system 100% autonomous for all packages, so I've to update manually a few packages, specially prerelease versions.
* Author doesn't update the version number on his web or on the web where I found the version isn't updated.
* Place where are version and installer is changed, so the package doesn't work or choco not push an updated version.
* Ketarin doesn't detect a change on the installer, but version changes, so I've to delete the installer located on my pc to obtain a change on ketarin and then the update works. I've this packages in a relativity attention.

Notes

If you don't know chocolatey read [this](http://ferventcoder.com/archive/2011/10/07/letrsquos-get-chocolatey-kind-of-like-apt-get-for-windows.aspx).

If you want to check the packages state go to [here](https://docs.google.com/spreadsheet/ccc?key=0AvH3YF-FkmY2dGVZdVdDaDdIbHZkRkFPSEdIME53Vnc&usp=sharing).

If you want to see example packages to create others download my repo kicking "Download .zip" or otherwise and execute "ketarin.exe" inside the "KETARIN" folder. They aren't perfect, are improvable.

If you want to know more, go to the wiki of this repo [here](https://github.com/tonigellida/chocolateyautomaticpackages/wiki).

If there's an outdated version or an error:

* Do a PR. Recommended!
* You can contact me.