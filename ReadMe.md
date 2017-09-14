<img src="https://chocolatey.org/content/images/logo_small.svg" width="80"> chocolateyatomaticpackages
=============================================

<p align="center">
    <a href="https://www.gnu.org/licenses/gpl-2.0.en.html" target="_blank"><img src="https://img.shields.io/badge/license-GPLv2-blue.svg" alt="GNU GPL v2"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/stargazers" target="_blank"><img src="https://img.shields.io/github/stars/adgellida/chocolateyautomaticpackages.svg" alt="stars"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/network" target="_blank"><img src="https://img.shields.io/github/forks/adgellida/chocolateyautomaticpackages.svg" alt="forks"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/issues?q=is%3Aopen" target="_blank"><img src="https://img.shields.io/github/issues/adgellida/chocolateyautomaticpackages.svg" alt="open issues"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/releases/latest" target="_blank"><img src="https://img.shields.io/github/downloads/adgellida/chocolateyautomaticpackages/total.svg" alt="total downloads"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/releases/latest" target="_blank"><img src="https://img.shields.io/github/downloads/adgellida/chocolateyautomaticpackages/v2017.09.09/total.svg" alt="total downloads latest release"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/releases/latest" target="_blank"><img src="https://img.shields.io/badge/latest release-no releases-blue.svg" alt="latest release"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/commits/master" target="_blank"><img src="https://img.shields.io/badge/maintained-no-red.svg" alt="maintained"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/releases"><img src="https://img.shields.io/badge/platform-Windows-lightgrey.svg" alt="Platforms"></a>
    <a href="https://github.com/adgellida/chocolateyautomaticpackages/releases"><img src="https://img.shields.io/badge/status-alpha-orange.svg" alt="Status"></a>
</p>

Packages for [Chocolatey](https://chocolatey.org) platform.

UNMAINTAINED
=============================================

I'm off on chocolatey. I think that never will update regularly packages. This doesn't mean that occasionally I update any packages.

If you detect a package outdated you have a lot of options to get it updated.
* Create a thread on [forum](https://groups.google.com/forum/#!forum/chocolatey) and demand a new maintainer for these package. Maintainer contact me to get maintainer permissions on these package and he has the responsability to get package updated.
* If your knowledge maintaning packages is average contact me at adgellida@gmail.com, write your choco username and request permissions on these package.
* Others...

#### A collection of automatic packages pushed to chocolatey official feed

On [this](https://github.com/adgellida/chocolateyautomaticpackages/blob/master/chocolateyautomaticpackages.ods?raw=true) link you can download and watch the last state of them when I left them.
On [this](https://github.com/adgellida/chocolateyautomaticpackages/tree/master/KETARIN) folder, you can execute ketarin.exe on your device to use the work left for auto.

RELEASE NOTES
=============================================
* 20/03/15 - [doc](https://chocolatey.org/profiles/doc),[dtgm](https://chocolatey.org/profiles/dtgm), [choco team](https://chocolatey.org/profiles/chocolatey) are examples of part of people that merged my repos to get it updated. Thanks for that.
* 02/12/14 - I decided to not maintain regularly on chocolatey, so I added as maintainer "chocolatey team" for integrate packages on "chocolatey-coreteampackages" to maintain them the most up-to-date possible.
* 27/11/14 - Converting all packages to "not checkables". 
* 21/11/14 - Bugfixing all the detected packages with problems.
* 20/11/14 - Moved all the icons to "icons" folder.
* 18/11/14 - Moved all the images to "images" folder.
* 21/09/14 - Updated checks on ketarin.
* 23/08/14 - There're a lot of manual packages, for testing causes or for impossibility to do it auto.
* 04/01/14 - Updated daily (only auto packages) or asap.
* 06/12/13 - All versions works on windows vista, 7, 8, 8.1 etc. On xp wasn't tested 100% but works very very often. There're packages that don't do all the instructions (remove innecesary shortcuts), but the program is fully functional afterwards.

ON FUTURE - PENDING TASKS
=============================================

* Convert all packages to "not checkables".
* Fix all packages following [this guide](https://github.com/chocolatey/chocolatey/wiki/CreatePackages#package-description-and-release-notes)
 * Use https://cdn.rawgit.com/ for icons.
 * Description formatting correction.
 * Extract icons from executables and resize it to 256x256.
 * etc.
* Do a package (or that choco core integrates the ability) that checks all installed programs and install all the packages of them.
If a new version is detected on choco installs them.
If not a message is showed to contact to mantainer to update it.
* Integrate packages on chocolatey-coreteampackages.
* Do a choco policy to do all the packages the same way. Each type, each form, not substantial differences like now.
* Do all packages "checksIfIsInstalled" - checkables if they are installed on system and not to install them if they exist.

Causes of errors:
=============================================
* My mistake, I'm human, not perfect.
* I don't have a system 100% autonomous for all packages, so I've to update manually a few packages, specially prerelease versions.
* Author doesn't update the version number on his web or on the web where I found the version isn't updated.
* Place where are version and installer is changed, so the package doesn't work or choco not push an updated version.
* Ketarin doesn't detect a change on the installer, but version changes, so I've to delete the installer located on my pc to obtain a change on ketarin and then the update works. I've this packages in a relativity attention.

Notes
=============================================
* If you don't know chocolatey read [this](http://ferventcoder.com/archive/2011/10/07/letrsquos-get-chocolatey-kind-of-like-apt-get-for-windows.aspx).
* If you want to check the packages state go to [here](https://docs.google.com/spreadsheet/ccc?key=0AvH3YF-FkmY2dGVZdVdDaDdIbHZkRkFPSEdIME53Vnc&usp=sharing).
* If you want to see example packages to create others download my repo kicking "Download .zip" or otherwise and execute "ketarin.exe" inside the "KETARIN" folder. They aren't perfect, are improvable.
* If you want to know more, go to the wiki of this repo [here](https://github.com/tonigellida/chocolateyautomaticpackages/wiki).
* If there's an outdated version or an error:
 * Do a PR. Recommended!
 * You can contact me.
 
![](http://i.imgur.com/Tl52ASY.png)
