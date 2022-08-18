---
title: sddm
nav_order: 4200
has_children: true
parent: XDM
---


# sddm


## Package

* [sddm](https://packages.ubuntu.com/jammy/sddm)


## Manpage

* $ man [sddm](https://manpages.ubuntu.com/manpages/jammy/en/man1/sddm.1.html)
* $ man [sddm.conf](https://manpages.ubuntu.com/manpages/jammy/en/man5/sddm.conf.5.html)
* $ man [sddm-greeter](https://manpages.ubuntu.com/manpages/jammy/en/man1/sddm-greeter.1.html)


## Path

### config

* Dir: /usr/lib/sddm/sddm.conf.d
* Dir: /etc/sddm.conf.d
* File: /etc/sddm.conf

### theme

* Dir: /usr/share/sddm/themes


## 安裝指令

執行下面指令，安裝「Package: [sddm](https://packages.ubuntu.com/jammy/sddm)」

``` sh
sudo apt-get install sddm
```


## 切換XDM指令

``` sh
sudo dpkg-reconfigure sddm
```

會出現一個「XDM 選單」提供選擇，請選擇「sddm」，按下「OK」就會切換，

接著登出，或是重新開機，就可以看到使用「sddm」當作登入的介面。


## 重新啟動 sddm

``` sh
sudo systemctl restart sddm.service
```


## Debian Wiki

* [SDDM](https://wiki.debian.org/SDDM)


## Arch Wiki

* [SDDM](https://wiki.archlinux.org/title/SDDM)


## 佈景主題

* [佈景主題](sddm/theme)


### ubuntu-theme

* Theme Dir: /usr/share/sddm/themes/ubuntu-theme

``` ini
[Theme]
Current=ubuntu-theme
```

### sddm-theme-sugar-candy

* Theme Dir: /usr/share/sddm/themes/sddm-theme-sugar-candy

``` ini
[Theme]
Current=sddm-theme-sugar-candy
```


### qml-module


執行

``` sh
sudo apt-get install qml-module-qtgraphicaleffects qml-module-qtquick-controls2 qml-module-qtquick-layouts
```

執行

``` sh
apt-cache search QtGraphicalEffects
```

顯示

```
qml-module-qtgraphicaleffects - Qt 5 Graphical Effects module
qtgraphicaleffects5-doc - Qt 5 graphical effects documentation
qtgraphicaleffects5-doc-html - Qt 5 graphicaleffects HTML documentation
```

執行

``` sh
apt-cache search QtQuick.Controls
```

顯示

```
qml-module-qtquick-controls - Qt 5 Quick Controls QML module
qml-module-qtquick-controls2 - Qt 5 Qt Quick Controls 2 QML module
qml6-module-qtquick-controls - Qt 6 Quick Controls QML module
```

執行

``` sh
apt-cache search QtQuick.Layouts
```

顯示

```
qml-module-qtquick-layouts - Qt 5 Quick Layouts QML module
qml6-module-qtquick-layouts - Qt 6 Quick Layouts QML module
```


