#### A collection of automatic packages pushed to chocolatey official feed [![Dependency Status](https://david-dm.org/popcorn-team/popcorn-app.svg?theme=shields.io)](https://david-dm.org/popcorn-team/popcorn-app)

If you don't know chocolatey read [this](http://ferventcoder.com/archive/2011/10/07/letrsquos-get-chocolatey-kind-of-like-apt-get-for-windows.aspx).

If you want to check the packages state go to [here](https://docs.google.com/spreadsheet/ccc?key=0AvH3YF-FkmY2dGVZdVdDaDdIbHZkRkFPSEdIME53Vnc&usp=sharing).

If you want to see example packages to create others download my repo kicking "Download .zip" or otherwise and execute "ketarin.exe" inside the "KETARIN-chocopkgup" folder. They aren't perfect, are improvable.

If you want to know more, go to the wiki of this repo [here](https://github.com/tonigellida/chocolateyautomaticpackages/wiki).

If there's an outdated version or an error:

* Do a PR. Recommended!
* You can contact me.

Causes of errors:

* My mistake, I'm human, not perfect.
* I don't have a system 100% autonomous for all packages, so I've to update manually a few packages, specially prerelease versions.
* Author doesn't update the version number on his web or on the web where I found the version isn't updated.
* Place where are version and installer is changed, so the package doesn't work or choco not push an updated version.
* Ketarin doesn't detect a change on the installer, but version changes, so I've to delete the installer located on my pc to obtain a change on ketarin and then the update works. I've this packages in a relativity attention.

Advices

* 04/01/14 - Updated daily (only auto packages)
* 06/12/13 - All versions works on windows vista, 7, 8, 8.1 etc. On xp wasn't tested 100% but works very very often. There're packages that don't do all the instructions (remove innecesary shortcuts), but the program is fully functional afterwards.
* 05/11/13 - By now this repo has only stable versions, prerelease versions will be on the next chocolateyautomaticpackagesbeta repo when I've time.