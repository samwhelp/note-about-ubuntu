---
title: theme-package-yaru
nav_order: 2060
has_children: false
parent: theme-package
grand_parent: 佈景主題
---


# theme-package-yaru


## 探索

執行

``` sh
apt-cache search yaru
```

顯示

```
libreoffice-style-yaru - office productivity suite -- Yaru symbol style
yaru-theme-gnome-shell - Yaru GNOME Shell desktop theme from the Ubuntu Community
yaru-theme-gtk - Yaru GTK theme from the Ubuntu Community
yaru-theme-icon - Yaru icon theme from the Ubuntu Community
yaru-theme-sound - Yaru sound theme from the Ubuntu Community
pop-sound-theme - Pop sound theme
ubuntu-mate-themes - GTK themes for Ubuntu MATE
yaru-theme-unity - Yaru Unity theme from the Ubuntu Community
```

執行

``` sh
dpkg -l '*yaru*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                   Version                  Architecture Description
+++-======================-========================-============-========================================================
ii  libreoffice-style-yaru 1:7.3.3-0ubuntu0.22.04.1 all          office productivity suite -- Yaru symbol style
ii  yaru-theme-gnome-shell 22.04.4                  all          Yaru GNOME Shell desktop theme from the Ubuntu Community
ii  yaru-theme-gtk         22.04.4                  all          Yaru GTK theme from the Ubuntu Community
ii  yaru-theme-icon        22.04.4                  all          Yaru icon theme from the Ubuntu Community
ii  yaru-theme-sound       22.04.4                  all          Yaru sound theme from the Ubuntu Community
```

## Package

執行

``` sh
apt-cache search yaru | sort | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [libreoffice-style-yaru](https://packages.ubuntu.com/jammy/libreoffice-style-yaru)
* [pop-sound-theme](https://packages.ubuntu.com/jammy/pop-sound-theme)
* [ubuntu-mate-themes](https://packages.ubuntu.com/jammy/ubuntu-mate-themes)
* [yaru-theme-gnome-shell](https://packages.ubuntu.com/jammy/yaru-theme-gnome-shell)
* [yaru-theme-gtk](https://packages.ubuntu.com/jammy/yaru-theme-gtk)
* [yaru-theme-icon](https://packages.ubuntu.com/jammy/yaru-theme-icon)
* [yaru-theme-sound](https://packages.ubuntu.com/jammy/yaru-theme-sound)
* [yaru-theme-unity](https://packages.ubuntu.com/jammy/yaru-theme-unity)
