---
title: wallpaper
nav_order: 1020
has_children: false
parent: Ubuntu
grand_parent: Ubuntu Flavours
---


# wallpaper


## 圖形使用者介面程式

可以透過「圖形使用者介面程式」，來更改「桌面圖片」。

在桌面，按下「滑鼠右鍵」，就會出現一個選單，選擇「Change Background...」。

就會出現設定更改「桌面圖片」的操作介面。

也就是「Settings / Background」。

``` sh
gnome-control-center background
```

## 指令操作

也可以透過「[gsettings](https://manpages.ubuntu.com/manpages/jammy/en/man1/gsettings.1.html)」這個指令，來更改「桌面圖片」。

``` sh
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'
```

在測試的過程中發現，若使用「暗色系」的「佈景主題」，則要執行下面指令

``` sh
gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/Blue_flower_by_Elena_Stravoravdi.jpg'
```

> 相關應用：「[wallpaper-select-gnome](https://samwhelp.github.io/note-about-fzf/read/project/wallpaper-select/wallpaper-select-gnome)」


## 小技巧

切換顯示桌面的按鍵組合是「`Win + d`」。


執行

``` sh
gsettings list-recursively | grep '<Super>d'
```

顯示

```
org.gnome.desktop.wm.keybindings show-desktop ['<Primary><Super>d', '<Primary><Alt>d', '<Super>d']
```

執行

``` sh
gsettings get org.gnome.desktop.wm.keybindings show-desktop
```

顯示

```
['<Primary><Super>d', '<Primary><Alt>d', '<Super>d']
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
gsettings list-recursively | grep uri
```

顯示

```
com.ubuntu.login-screen background-picture-uri ''
org.gnome.DejaDup.Remote uri ''
org.gnome.Disks image-dir-uri ''
org.gnome.baobab.preferences excluded-uris @as []
org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/warty-final-ubuntu.png'
org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/warty-final-ubuntu.png'
org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/warty-final-ubuntu.png'
org.gnome.totem open-uri ''
org.gnome.totem screenshot-save-uri ''
org.gtk.Settings.FileChooser last-folder-uri ''
org.gtk.gtk4.Settings.FileChooser last-folder-uri ''
```


執行

``` sh
gsettings list-recursively | grep icture-uri | sort
```

顯示

```
com.ubuntu.login-screen background-picture-uri ''
org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/warty-final-ubuntu.png'
org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/warty-final-ubuntu.png'
org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/warty-final-ubuntu.png'
```
