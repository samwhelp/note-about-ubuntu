---
title: theme-package-greybird
nav_order: 2063
has_children: false
parent: theme-package
grand_parent: 佈景主題
---


# theme-package-greybird


## 探索

執行

``` sh
apt-cache search greybird | sort
```

顯示

```
blackbird-gtk-theme - dark GTK+ theme from the Shimmer Project
bluebird-gtk-theme - blue GTK+ theme from the Shimmer Project
greybird-gtk-theme - grey GTK+ theme from the Shimmer Project
```

執行

``` sh
dpkg -l '*greybird*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name               Version         Architecture Description
+++-==================-===============-============-========================================
ii  greybird-gtk-theme 3.23.1-0ubuntu1 all          grey GTK+ theme from the Shimmer Project
```

## Package

執行

``` sh
apt-cache search greybird | sort | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [blackbird-gtk-theme](https://packages.ubuntu.com/jammy/blackbird-gtk-theme)
* [bluebird-gtk-theme](https://packages.ubuntu.com/jammy/bluebird-gtk-theme)
* [greybird-gtk-theme](https://packages.ubuntu.com/jammy/greybird-gtk-theme)


## xfce / gtk-theme

執行

``` sh
apt-cache search xfce | grep gtk-theme | sort
```

顯示

```
blackbird-gtk-theme - dark GTK+ theme from the Shimmer Project
bluebird-gtk-theme - blue GTK+ theme from the Shimmer Project
greybird-gtk-theme - grey GTK+ theme from the Shimmer Project
```


## xfce / icon-theme

執行

``` sh
apt-cache search xfce | grep icon-theme | sort
```

顯示

```
elementary-xfce-icon-theme - elementary icon theme modified for Xfce
xubuntu-icon-theme - Xubuntu icon theme (transitional package)
```

* [elementary-xfce-icon-theme](https://packages.ubuntu.com/jammy/elementary-xfce-icon-theme)

執行

``` sh
apt-cache search xfce | grep icon | sort
```

顯示

```
connman-ui - full-featured GTK-based tray icon UI for ConnMan
elementary-xfce-icon-theme - elementary icon theme modified for Xfce
thunar-data - Provides thunar documentation, icons and translations
xfdesktop4-data - Xfce desktop background, icons and root menu (common files)
xfdesktop4 - Xfce desktop background, icons and root menu manager
xubuntu-icon-theme - Xubuntu icon theme (transitional package)
```
