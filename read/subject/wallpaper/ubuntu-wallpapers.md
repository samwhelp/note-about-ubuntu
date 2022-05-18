---
title: ubuntu-wallpapers
nav_order: 2011
has_children: false
parent: 桌面圖片
---


# ubuntu-wallpapers

## 探索

執行

``` sh
apt-cache show ubuntu-wallpapers
```

顯示

```
Package: ubuntu-wallpapers
Architecture: all
Version: 22.04.3-0ubuntu1
Priority: optional
Section: metapackages
Origin: Ubuntu
Maintainer: Ubuntu Artwork Team <ubuntu-art@lists.ubuntu.com>
Bugs: https://bugs.launchpad.net/ubuntu/+filebug
Installed-Size: 1956
Depends: ubuntu-wallpapers-jammy
Suggests: ubuntu-wallpapers-karmic, ubuntu-wallpapers-lucid, ubuntu-wallpapers-maverick, ubuntu-wallpapers-natty, ubuntu-wallpapers-oneiric, ubuntu-wallpapers-precise, ubuntu-wallpapers-quantal, ubuntu-wallpapers-raring, ubuntu-wallpapers-saucy, ubuntu-wallpapers-trusty, ubuntu-wallpapers-utopic, ubuntu-wallpapers-vivid, ubuntu-wallpapers-wily, ubuntu-wallpapers-xenial, ubuntu-wallpapers-yakkety, ubuntu-wallpapers-zesty, ubuntu-wallpapers-artful, ubuntu-wallpapers-bionic, ubuntu-wallpapers-cosmic, ubuntu-wallpapers-disco, ubuntu-wallpapers-eoan, ubuntu-wallpapers-focal, ubuntu-wallpapers-groovy, ubuntu-wallpapers-hirsute, ubuntu-wallpapers-impish
Filename: pool/main/u/ubuntu-wallpapers/ubuntu-wallpapers_22.04.3-0ubuntu1_all.deb
Size: 1834218
MD5sum: 692acefa5d3b2e42f8e0d23b3af9978d
SHA1: 5d159da6bc1e627420400a5f382552683218fc34
SHA256: 38ba463267b581710b25de9f916ff500e73c93e51c622874f006e1d97260b2b8
SHA512: ccc71cc5ce954121e715b3c1677ab2dc4915bf386760e7c8c39aa0f0ac4fd1683eac6a430a635059066e232e01af9676db28f7ba6c5fd9610287567965bc93f9
Homepage: https://launchpad.net/ubuntu-wallpapers
Description-en: Ubuntu Wallpapers
 The default Ubuntu wallpaper. This is also a meta-package depending on the
 other default wallpapers for the current Ubuntu release.
Description-md5: dee983dea3f6bb210ec03f8e97bf3e84
Task: ubuntu-desktop-minimal, ubuntu-desktop, ubuntukylin-desktop
```


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
ii  ubuntu-wallpapers          22.04.3-0ubuntu1 all          Ubuntu Wallpapers
un  ubuntu-wallpapers-artful   <none>           <none>       (no description available)
un  ubuntu-wallpapers-bionic   <none>           <none>       (no description available)
un  ubuntu-wallpapers-cosmic   <none>           <none>       (no description available)
un  ubuntu-wallpapers-disco    <none>           <none>       (no description available)
un  ubuntu-wallpapers-eoan     <none>           <none>       (no description available)
un  ubuntu-wallpapers-focal    <none>           <none>       (no description available)
un  ubuntu-wallpapers-groovy   <none>           <none>       (no description available)
un  ubuntu-wallpapers-hirsute  <none>           <none>       (no description available)
un  ubuntu-wallpapers-impish   <none>           <none>       (no description available)
ii  ubuntu-wallpapers-jammy    22.04.3-0ubuntu1 all          Ubuntu 22.04 Wallpapers
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
ubuntu-wallpapers-jammy
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
* [ubuntu-wallpapers-jammy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-jammy) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-jammy/filelist)
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



## ubuntu-wallpapers-jammy

執行

``` sh
dpkg -L ubuntu-wallpapers-jammy
```

顯示

```
/.
/usr
/usr/share
/usr/share/backgrounds
/usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg
/usr/share/backgrounds/Cherry_Tree_in_Lakones_by_elenastravoravdi.jpg
/usr/share/backgrounds/DSC2943_by_kcpru.jpg
/usr/share/backgrounds/Jammy-Jellyfish_WP_4096x2304_Grey.png
/usr/share/backgrounds/Mirror_by_Uday_Nakade.jpg
/usr/share/backgrounds/Optical_Fibers_in_Dark_by_Elena_Stravoravdi.jpg
/usr/share/backgrounds/canvas_by_roytanck.jpg
/usr/share/backgrounds/contest
/usr/share/backgrounds/contest/jammy.xml
/usr/share/backgrounds/jj_dark_by_Hiking93.jpg
/usr/share/backgrounds/jj_light_by_Hiking93.jpg
/usr/share/backgrounds/ubuntu2_by_arman1992.jpg
/usr/share/backgrounds/ubuntu_by_arman1992.jpg
/usr/share/doc
/usr/share/doc/ubuntu-wallpapers-jammy
/usr/share/doc/ubuntu-wallpapers-jammy/changelog.Debian.gz
/usr/share/doc/ubuntu-wallpapers-jammy/copyright
/usr/share/gnome-background-properties
/usr/share/gnome-background-properties/jammy-wallpapers.xml
```
