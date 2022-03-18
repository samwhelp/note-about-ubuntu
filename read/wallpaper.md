---
title: 桌面圖片
nav_order: 2010
has_children: false
---

# 桌面圖片

## 探索

執行

``` sh
dpkg -l *ubuntu-wallpapers*
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                       Version          Architecture Description
+++-==========================-================-============-=================================
ii  ubuntu-wallpapers          21.10.1-0ubuntu1 all          Ubuntu Wallpapers
un  ubuntu-wallpapers-artful   <none>           <none>       (no description available)
un  ubuntu-wallpapers-bionic   <none>           <none>       (no description available)
un  ubuntu-wallpapers-cosmic   <none>           <none>       (no description available)
un  ubuntu-wallpapers-disco    <none>           <none>       (no description available)
un  ubuntu-wallpapers-eoan     <none>           <none>       (no description available)
un  ubuntu-wallpapers-focal    <none>           <none>       (no description available)
un  ubuntu-wallpapers-groovy   <none>           <none>       (no description available)
un  ubuntu-wallpapers-hirsute  <none>           <none>       (no description available)
ii  ubuntu-wallpapers-impish   21.10.1-0ubuntu1 all          Ubuntu 21.10 Wallpapers
un  ubuntu-wallpapers-karmic   <none>           <none>       (no description available)
un  ubuntu-wallpapers-lucid    <none>           <none>       (no description available)
un  ubuntu-wallpapers-maverick <none>           <none>       (no description available)
un  ubuntu-wallpapers-natty    <none>           <none>       (no description available)
un  ubuntu-wallpapers-oneiric  <none>           <none>       (no description available)
un  ubuntu-wallpapers-precise  <none>           <none>       (no description available)
un  ubuntu-wallpapers-quantal  <none>           <none>       (no description available)
un  ubuntu-wallpapers-raring   <none>           <none>       (no description available)
un  ubuntu-wallpapers-saucy    <none>           <none>       (no description available)
un  ubuntu-wallpapers-trusty   <none>           <none>       (no description available)
un  ubuntu-wallpapers-utopic   <none>           <none>       (no description available)
un  ubuntu-wallpapers-vivid    <none>           <none>       (no description available)
un  ubuntu-wallpapers-wily     <none>           <none>       (no description available)
un  ubuntu-wallpapers-xenial   <none>           <none>       (no description available)
un  ubuntu-wallpapers-yakkety  <none>           <none>       (no description available)
un  ubuntu-wallpapers-zesty    <none>           <none>       (no description available)
```

執行

``` sh
dpkg -l *ubuntu-wallpapers* | grep 'ubuntu-wallpapers-' | awk '{print $2}'
```

顯示

```
ubuntu-wallpapers-artful
ubuntu-wallpapers-bionic
ubuntu-wallpapers-cosmic
ubuntu-wallpapers-disco
ubuntu-wallpapers-eoan
ubuntu-wallpapers-focal
ubuntu-wallpapers-groovy
ubuntu-wallpapers-hirsute
ubuntu-wallpapers-impish
ubuntu-wallpapers-karmic
ubuntu-wallpapers-lucid
ubuntu-wallpapers-maverick
ubuntu-wallpapers-natty
ubuntu-wallpapers-oneiric
ubuntu-wallpapers-precise
ubuntu-wallpapers-quantal
ubuntu-wallpapers-raring
ubuntu-wallpapers-saucy
ubuntu-wallpapers-trusty
ubuntu-wallpapers-utopic
ubuntu-wallpapers-vivid
ubuntu-wallpapers-wily
ubuntu-wallpapers-xenial
ubuntu-wallpapers-yakkety
ubuntu-wallpapers-zesty
ubuntu-wallpapers-artful
ubuntu-wallpapers-bionic
ubuntu-wallpapers-cosmic
ubuntu-wallpapers-disco
ubuntu-wallpapers-eoan
ubuntu-wallpapers-focal
ubuntu-wallpapers-groovy
ubuntu-wallpapers-hirsute
ubuntu-wallpapers-impish
ubuntu-wallpapers-karmic
ubuntu-wallpapers-lucid
ubuntu-wallpapers-maverick
ubuntu-wallpapers-natty
ubuntu-wallpapers-oneiric
ubuntu-wallpapers-precise
ubuntu-wallpapers-quantal
ubuntu-wallpapers-raring
ubuntu-wallpapers-saucy
ubuntu-wallpapers-trusty
ubuntu-wallpapers-utopic
ubuntu-wallpapers-vivid
ubuntu-wallpapers-wily
ubuntu-wallpapers-xenial
ubuntu-wallpapers-yakkety
ubuntu-wallpapers-zesty
```

執行

``` sh
apt-cache search wallpapers
```

顯示

```
ubuntu-wallpapers - Ubuntu Wallpapers
ubuntu-wallpapers-impish - Ubuntu 21.10 Wallpapers
anypaper - front-end for wallpapersetter
breeze - Default Plasma theme (Metapackage)
budgie-wallpapers - Wallpapers for Ubuntu Budgie
budgie-wallpapers-artful - Ubuntu Budgie 17.10 Wallpapers
budgie-wallpapers-bionic - Ubuntu Budgie 18.04 Wallpapers
budgie-wallpapers-cosmic - Ubuntu Budgie 18.10 Wallpapers
budgie-wallpapers-disco - Ubuntu Budgie 19.04 Wallpapers
budgie-wallpapers-eoan - Ubuntu Budgie 19.10 Wallpapers
budgie-wallpapers-focal - Ubuntu Budgie 20.04 Wallpapers
budgie-wallpapers-groovy - Ubuntu Budgie 20.10 Wallpapers
budgie-wallpapers-hirsute - Ubuntu Budgie 21.04 Wallpapers
budgie-wallpapers-impish - Ubuntu Budgie 21.10 Wallpapers
budgie-wallpapers-jammy - Ubuntu Budgie 22.04 Wallpapers
budgie-wallpapers-xenial - budgie-remix 16.04.1 Wallpapers
budgie-wallpapers-yakkety - budgie-remix 16.10 Wallpapers
budgie-wallpapers-zesty - Ubuntu Budgie 17.04 Wallpapers
budgie-workspace-wallpaper-applet - Applet providing per workspace wallpaper
edgy-community-wallpapers - Edgy Community Wallpapers
edgy-wallpapers - Edgy Wallpapers
edubuntu-artwork - edubuntu themes and artwork
edubuntu-wallpapers - wallpapers included in edubuntu
feisty-wallpapers - Feisty Wallpapers
gnome-backgrounds - Set of backgrounds packaged with the GNOME desktop
gnome-brave-icon-theme - blue variation of the GNOME-Colors icon theme
gnome-colors - set of GNOME icon themes
gnome-colors-common - common icons for all GNOME-Colors icon themes
gnome-dust-icon-theme - chocolate variation of the GNOME-Colors icon theme
gnome-human-icon-theme - orange variation of the GNOME-Colors icon theme
gnome-illustrious-icon-theme - pink variation of the GNOME-Colors icon theme
gnome-noble-icon-theme - purple variation of the GNOME-Colors icon theme
gnome-wine-icon-theme - red variation of the GNOME-Colors icon theme
gnome-wise-icon-theme - green variation of the GNOME-Colors icon theme
gutsy-wallpapers - Gutsy Wallpapers
hsetroot - tool for composing root-pixmaps for X11
kubuntu-wallpapers - Selection of classic KDE wallpapers for Focal Fossa
kubuntu-wallpapers-focal - Kubuntu Focal; wallpapers - transitional package
libkdynamicwallpaper1 - Dynamic Wallpaper Engine for Plasma (shared libraries)
libkdynamicwallpaper1-dev - Dynamic Wallpaper Engine for Plasma (development files)
mate-backgrounds - Set of backgrounds packaged with the MATE Desktop Environment
materia-kde - Port of the popular GTK theme Materia for Plasma 5
nitrogen - wallpaper browser and changing utility for X
peace-wallpapers - Peace look - Wallpapers
plasma-wallpaper-dynamic - Dynamic Wallpaper Engine for Plasma
plasma-wallpapers-addons - additional wallpaper plugins for Plasma 5
plasma-workspace-wallpapers - Wallpapers for Plasma 5
texlive-latex-extra - TeX Live: LaTeX additional packages
tropic-wallpapers - Tropic look - Wallpapers
ubuntu-gnome-wallpapers - Ubuntu GNOME Wallpapers
ubuntu-gnome-wallpapers-trusty - Ubuntu GNOME 14.04 Wallpapers
ubuntu-gnome-wallpapers-utopic - Ubuntu GNOME 14.10 Wallpapers
ubuntu-gnome-wallpapers-xenial - Ubuntu GNOME 16.04 Wallpapers
ubuntu-gnome-wallpapers-yakkety - Ubuntu GNOME 16.10 Wallpapers
ubuntu-mate-wallpapers - Wallpaper and background images for Ubuntu MATE
ubuntu-mate-wallpapers-artful - Ubuntu MATE 17.10 Wallpapers
ubuntu-mate-wallpapers-bionic - Ubuntu MATE 18.04 Wallpapers
ubuntu-mate-wallpapers-common - Common Ubuntu MATE wallpapers
ubuntu-mate-wallpapers-complete - Complete set of all Ubuntu MATE wallpapers
ubuntu-mate-wallpapers-cosmic - Ubuntu MATE 18.10 Wallpapers
ubuntu-mate-wallpapers-disco - Ubuntu MATE 19.04 Wallpapers
ubuntu-mate-wallpapers-eoan - Ubuntu MATE 19.10 Wallpapers
ubuntu-mate-wallpapers-focal - Ubuntu MATE 20.04 Wallpapers
ubuntu-mate-wallpapers-groovy - Ubuntu MATE 20.10 Wallpapers
ubuntu-mate-wallpapers-hirsute - Ubuntu MATE 21.04 Wallpapers
ubuntu-mate-wallpapers-impish - Ubuntu MATE 21.10 Wallpapers
ubuntu-mate-wallpapers-jammy - Ubuntu MATE 22.04 Wallpapers
ubuntu-mate-wallpapers-legacy - Legacy Ubuntu MATE wallpapers
ubuntu-mate-wallpapers-photos - Selection of photos for Ubuntu MATE wallpapers
ubuntu-mate-wallpapers-utopic - Ubuntu MATE 14.10 Wallpapers
ubuntu-mate-wallpapers-vivid - Ubuntu MATE 15.04 Wallpapers
ubuntu-mate-wallpapers-wily - Ubuntu MATE 15.10 Wallpapers
ubuntu-mate-wallpapers-xenial - Ubuntu MATE 16.04 Wallpapers
ubuntu-mate-wallpapers-yakkety - Ubuntu MATE 16.10 Wallpapers
ubuntu-mate-wallpapers-zesty - Ubuntu MATE 17.04 Wallpapers
ubuntu-wallpapers-artful - Ubuntu 17.10 Wallpapers
ubuntu-wallpapers-bionic - Ubuntu 18.04 Wallpapers
ubuntu-wallpapers-cosmic - Ubuntu 18.10 Wallpapers
ubuntu-wallpapers-disco - Ubuntu 19.04 Wallpapers
ubuntu-wallpapers-eoan - Ubuntu 19.10 Wallpapers
ubuntu-wallpapers-focal - Ubuntu 20.04 Wallpapers
ubuntu-wallpapers-groovy - Ubuntu 20.10 Wallpapers
ubuntu-wallpapers-groovy-raspi - Ubuntu 20.10 Wallpapers - Raspberry Pi
ubuntu-wallpapers-hirsute - Ubuntu 21.04 Wallpapers
ubuntu-wallpapers-karmic - Ubuntu 9.10 Wallpapers
ubuntu-wallpapers-lucid - Ubuntu 10.04 Wallpapers
ubuntu-wallpapers-maverick - Ubuntu 10.10 Wallpapers
ubuntu-wallpapers-natty - Ubuntu 11.04 Wallpapers
ubuntu-wallpapers-oneiric - Ubuntu 11.10 Wallpapers
ubuntu-wallpapers-precise - Ubuntu 12.04 Wallpapers
ubuntu-wallpapers-quantal - Ubuntu 12.10 Wallpapers
ubuntu-wallpapers-raring - Ubuntu 13.04 Wallpapers
ubuntu-wallpapers-saucy - Ubuntu 13.10 Wallpapers
ubuntu-wallpapers-trusty - Ubuntu 14.04 Wallpapers
ubuntu-wallpapers-utopic - Ubuntu 14.10 Wallpapers
ubuntu-wallpapers-vivid - Ubuntu 15.04 Wallpapers
ubuntu-wallpapers-wily - Ubuntu 15.10 Wallpapers
ubuntu-wallpapers-xenial - Ubuntu 16.04 Wallpapers
ubuntu-wallpapers-yakkety - Ubuntu 16.10 Wallpapers
ubuntu-wallpapers-zesty - Ubuntu 17.04 Wallpapers
ubuntukylin-wallpapers - Ubuntu Kylin Wallpapers
ubuntukylin-wallpapers-artful - Ubuntu Kylin 17.10 Wallpapers
ubuntukylin-wallpapers-bionic - Ubuntu Kylin 18.04 Wallpapers
ubuntukylin-wallpapers-cosmic - Ubuntu Kylin 18.10 Wallpapers
ubuntukylin-wallpapers-disco - Ubuntu Kylin 19.04 Wallpapers
ubuntukylin-wallpapers-eoan - Ubuntu Kylin 19.10 Wallpapers
ubuntukylin-wallpapers-focal - Ubuntu Kylin 20.04 Wallpapers
ubuntukylin-wallpapers-groovy - Ubuntu Kylin 20.10 Wallpapers
ubuntukylin-wallpapers-saucy - Ubuntu Kylin 13.10 Wallpapers
ubuntukylin-wallpapers-trusty - Ubuntu Kylin 14.04 Wallpapers
ubuntukylin-wallpapers-utopic - Ubuntu Kylin 14.10 Wallpapers
ubuntukylin-wallpapers-vivid - Ubuntu Kylin 15.04 Wallpapers
ubuntukylin-wallpapers-wily - Ubuntu Kylin 15.10 Wallpapers
ubuntukylin-wallpapers-xenial - Ubuntu Kylin 16.04 Wallpapers
ubuntukylin-wallpapers-yakkety - Ubuntu Kylin 16.10 Wallpapers
ubuntukylin-wallpapers-zesty - Ubuntu Kylin 17.04 Wallpapers
ubuntustudio-wallpapers - Ubuntu Studio - Wallpapers (Meta/Current)
ubuntustudio-wallpapers-bionic - Ubuntu Studio - Wallpapers (Bionic)
ubuntustudio-wallpapers-cosmic - Ubuntu Studio - Wallpapers (Cosmic)
ubuntustudio-wallpapers-disco - Ubuntu Studio - Wallpapers (Disco)
ubuntustudio-wallpapers-eoan - Ubuntu Studio - Wallpapers (Eoan)
ubuntustudio-wallpapers-focal - Ubuntu Studio - Wallpapers (Focal)
ubuntustudio-wallpapers-jammy - Ubuntu Studio - Wallpapers (Jammy)
ubuntustudio-wallpapers-legacy - Ubuntu Studio - Wallpapers (Legacy)
ubuntustudio-wallpapers-xenial - Ubuntu Studio - Wallpapers (Xenial)
ukui-wallpapers - Wallpapers for UKUI desktop environment
wallch - wallpaper changer
xubuntu-artwork - Xubuntu themes and artwork
xubuntu-community-wallpapers - Xubuntu community wallpapers
xubuntu-community-wallpapers-bionic - Xubuntu community wallpapers (Bionic)
xubuntu-community-wallpapers-focal - Xubuntu community wallpapers (Focal)
xubuntu-community-wallpapers-trusty - Xubuntu community wallpapers (Trusty)
xubuntu-community-wallpapers-xenial - Xubuntu community wallpapers (Xenial)
xubuntu-wallpapers - Xubuntu desktop wallpapers
```


## Package


* [完整安裝腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/full/ubuntu-wallpapers)


``` sh
dpkg -l *ubuntu-wallpapers* | grep 'ubuntu-wallpapers' | awk '{print "* ["$2"](https://packages.ubuntu.com/jammy/"$2") / [filelist](https://packages.ubuntu.com/jammy/all/"$2"/filelist)"}'
```

* [ubuntu-wallpapers](https://packages.ubuntu.com/jammy/ubuntu-wallpapers) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers/filelist)
* [ubuntu-wallpapers-artful](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-artful) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-artful/filelist)
* [ubuntu-wallpapers-bionic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-bionic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-bionic/filelist)
* [ubuntu-wallpapers-cosmic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-cosmic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-cosmic/filelist)
* [ubuntu-wallpapers-disco](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-disco) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-disco/filelist)
* [ubuntu-wallpapers-eoan](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-eoan) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-eoan/filelist)
* [ubuntu-wallpapers-focal](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-focal) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-focal/filelist)
* [ubuntu-wallpapers-groovy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-groovy) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-groovy/filelist)
* [ubuntu-wallpapers-hirsute](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-hirsute) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-hirsute/filelist)
* [ubuntu-wallpapers-impish](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-impish) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-impish/filelist)
* [ubuntu-wallpapers-karmic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-karmic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-karmic/filelist)
* [ubuntu-wallpapers-lucid](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-lucid) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-lucid/filelist)
* [ubuntu-wallpapers-maverick](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-maverick) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-maverick/filelist)
* [ubuntu-wallpapers-natty](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-natty) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-natty/filelist)
* [ubuntu-wallpapers-oneiric](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-oneiric) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-oneiric/filelist)
* [ubuntu-wallpapers-precise](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-precise) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-precise/filelist)
* [ubuntu-wallpapers-quantal](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-quantal) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-quantal/filelist)
* [ubuntu-wallpapers-raring](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-raring) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-raring/filelist)
* [ubuntu-wallpapers-saucy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-saucy) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-saucy/filelist)
* [ubuntu-wallpapers-trusty](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-trusty) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-trusty/filelist)
* [ubuntu-wallpapers-utopic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-utopic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-utopic/filelist)
* [ubuntu-wallpapers-vivid](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-vivid) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-vivid/filelist)
* [ubuntu-wallpapers-wily](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-wily) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-wily/filelist)
* [ubuntu-wallpapers-xenial](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-xenial) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-xenial/filelist)
* [ubuntu-wallpapers-yakkety](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-yakkety) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-yakkety/filelist)
* [ubuntu-wallpapers-zesty](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-zesty) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-zesty/filelist)
