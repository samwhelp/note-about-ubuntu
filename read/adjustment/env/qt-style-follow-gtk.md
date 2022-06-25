---
title: QGtkStyle 設定
nav_order: 5081
has_children: false
parent: 系統環境微調
grand_parent: 微調
---

# QGtkStyle 設定


## 設定腳本

* [設定腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/part/qt-style-follow-gtk)

## 設定檔案

* [/etc/profile.d/qt-style-follow-gtk.sh](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/part/qt-style-follow-gtk/config/qt-style-follow-gtk/qt-style-follow-gtk.sh)


## 前提

因為我慣用「pcmanfm-qt」，所以做了這個設定後，

我設定「gtk」的「佈景主題」，只要該「佈景主題」有提供「gtk2」的外觀設定，

跟「qt」相關的程式外觀，就會依據「gtk2」的外觀設定來顯示。


## 設定說明

必須安裝「[qt5-gtk2-platformtheme](https://packages.ubuntu.com/jammy/qt5-gtk2-platformtheme)」，

``` sh
sudo apt-get install qt5-gtk2-platformtheme
```

並且「環境變數」要設定「`QT_QPA_PLATFORMTHEME=gtk2`」。

有幾個地方可以設定，下面只要選擇其中一種就行了

* /etc/environment
* /etc/profile.d/ (上面設定腳本採用的方式)
* /etc/X11/Xsession.d/
* ~/.profile


## Package

* [qt5-gtk2-platformtheme](https://packages.ubuntu.com/jammy/qt5-gtk2-platformtheme)
* [qt5-gtk-platformtheme](https://packages.ubuntu.com/jammy/qt5-gtk-platformtheme)
* [qt6-gtk-platformtheme](https://packages.ubuntu.com/jammy/qt6-gtk-platformtheme)


## Arch Wiki

* Uniform look for Qt and GTK applications / [QGtkStyle](https://wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications#QGtkStyle)


## 案例


### ubuntu-mate-default-settings

執行

``` sh
dpkg -S /etc/profile.d/mate-qt.sh
```

顯示

```
ubuntu-mate-default-settings: /etc/profile.d/mate-qt.sh
```

執行

``` sh
cat /etc/profile.d/mate-qt.sh
```

顯示

```
# MATE Desktop Qt integrations
if [ "x$DESKTOP_SESSION" = "xmate" ] || [ "x$XDG_SESSION_DESKTOP" = "xmate" ]; then
    # QT apps to use GTK styling
    export QT_QPA_PLATFORMTHEME=gtk2
fi
```


### qt5ct

執行

``` sh
dpkg -S /etc/X11/Xsession.d/99qt5ct
```

顯示

```
qt5ct: /etc/X11/Xsession.d/99qt5ct
```

執行

``` sh
cat /etc/X11/Xsession.d/99qt5ct
```

顯示

```
# Enable qt5ct by default unless another PLATFORMTHEME option is set
# or KDE is running.
if [ -z "$QT_QPA_PLATFORMTHEME" ] && [ "$XDG_CURRENT_DESKTOP" != "KDE" ]
then
        export QT_QPA_PLATFORMTHEME=qt5ct
fi
```
