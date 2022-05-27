---
title: theme-package-adwaita
nav_order: 2060
has_children: false
parent: theme-package
grand_parent: 佈景主題
---


# theme-package-adwaita


## 探索

執行

``` sh
apt-cache search adwaita | grep theme | sort
```

顯示

```
adwaita-icon-theme - default icon theme of GNOME (small subset)
adwaita-icon-theme-full - default icon theme of GNOME
adwaita-qt - Qt 5 port of GNOME’s Adwaita theme
gnome-themes-extra - Adwaita GTK+ 2 theme — engine
gnome-themes-extra-data - Adwaita GTK+ 2 theme — common files
gnome-themes-standard - Adwaita GTK+ 2 theme — engine - transitional package
libadwaitaqt1 - Qt 5 port of GNOME’s Adwaita theme — public library
libadwaitaqt-dev - Qt 5 port of GNOME’s Adwaita theme — development files
libadwaitaqtpriv1 - Qt 5 port of GNOME’s Adwaita theme — private library
tcl-awthemes - Dark and light themes for Tk
```

執行

``` sh
dpkg -l '*adwaita*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                    Version        Architecture Description
+++-=======================-==============-============-==========================================
ii  adwaita-icon-theme      41.0-1ubuntu1  all          default icon theme of GNOME (small subset)
un  adwaita-icon-theme-full <none>         <none>       (no description available)
un  adwaita-qt              <none>         <none>       (no description available)
ii  libadwaita-1-0:amd64    1.1.0-1ubuntu2 amd64        Library with GTK widgets for mobile phones
```

## Package

執行

``` sh
apt-cache search adwaita | grep theme | sort | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [adwaita-icon-theme](https://packages.ubuntu.com/jammy/adwaita-icon-theme)
* [adwaita-icon-theme-full](https://packages.ubuntu.com/jammy/adwaita-icon-theme-full)
* [adwaita-qt](https://packages.ubuntu.com/jammy/adwaita-qt)
* [gnome-themes-extra](https://packages.ubuntu.com/jammy/gnome-themes-extra)
* [gnome-themes-extra-data](https://packages.ubuntu.com/jammy/gnome-themes-extra-data)
* [gnome-themes-standard](https://packages.ubuntu.com/jammy/gnome-themes-standard)
* [libadwaitaqt1](https://packages.ubuntu.com/jammy/libadwaitaqt1)
* [libadwaitaqt-dev](https://packages.ubuntu.com/jammy/libadwaitaqt-dev)
* [libadwaitaqtpriv1](https://packages.ubuntu.com/jammy/libadwaitaqtpriv1)
* [tcl-awthemes](https://packages.ubuntu.com/jammy/tcl-awthemes)
