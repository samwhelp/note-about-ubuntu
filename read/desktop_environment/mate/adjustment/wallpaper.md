---
title: wallpaper
nav_order: 3010
has_children: false
parent: mate
grand_parent: 桌面環境
---


# wallpaper


## 微調腳本

| 微調腳本 |
| --- |
| [mate-wallpaper-default](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/mate/part/mate-wallpaper-default) |


## 圖形使用者介面程式

可以透過「圖形使用者介面程式」，來更改「桌面圖片」。

在桌面，按下「滑鼠右鍵」，就會出現一個選單，選擇「Change Destop Background」。

就會出現設定更改「桌面圖片」的操作介面。

也就是「Appearance Preferences / Background」。

``` sh
mate-appearance-properties -p background
```

## 指令操作

也可以透過「[gsettings](https://manpages.ubuntu.com/manpages/jammy/en/man1/gsettings.1.html)」這個指令，來更改「桌面圖片」。

執行下面指令，將桌面圖片設定為「/usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg」

``` sh
gsettings set org.mate.background picture-filename '/usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'
```

或是執行下面指令，恢復成預設值

``` sh
gsettings reset org.mate.background picture-filename
```

## 顯示方式

執行下面指令，設定顯示桌面圖片的方式。

``` sh
gsettings set org.mate.background picture-options 'zoom'
```


## 小技巧

切換顯示桌面的按鍵組合是「`Win + d`」。


執行

``` sh
gsettings list-recursively | grep '<Super>d' | grep mate
```

顯示

```
org.mate.Marco.global-keybindings show-desktop '<Super>d'
```

執行

``` sh
gsettings get org.mate.Marco.global-keybindings show-desktop
```

顯示

```
'<Super>d'
```


## 探索

## wallpaper package

請參考「[另一篇](https://samwhelp.github.io/note-about-ubuntu/read/subject/wallpaper.html)」的探索。

## ubuntu-wallpapers-jammy

* [ubuntu-wallpapers-jammy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-jammy) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-jammy/filelist)

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

## ubuntu-wallpapers

* [ubuntu-wallpapers-jammy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers/filelist)

執行

``` sh
dpkg -L ubuntu-wallpapers
```

顯示

```
/.
/usr
/usr/share
/usr/share/backgrounds
/usr/share/backgrounds/warty-final-ubuntu.png
/usr/share/doc
/usr/share/doc/ubuntu-wallpapers
/usr/share/doc/ubuntu-wallpapers/copyright
/usr/share/gnome-background-properties
/usr/share/gnome-background-properties/ubuntu-wallpapers.xml
/usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png
/usr/share/doc/ubuntu-wallpapers/changelog.Debian.gz
```

## 探索 / gsettings

執行

``` sh
gsettings list-recursively | grep uri | grep mate
```

顯示

```
org.mate.caja.preferences background-uri ''
org.mate.caja.preferences side-pane-background-uri ''
org.mate.disk-usage-analyzer.preferences excluded-uris @as []
org.mate.power-manager notify-sleep-failed-uri ''
```


執行

``` sh
gsettings list-recursively | grep picture | grep mate
```

顯示

```
org.mate.Atril pictures-directory @ms nothing
org.mate.background picture-filename '/usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'
org.mate.background picture-opacity 100
org.mate.background picture-options 'stretched'
org.mate.screensaver picture-filename '/usr/share/backgrounds/mate/desktop/Stripes.png'
```
