---
title: fcitx5 themes
nav_order: 3190
has_children: false
parent: fcitx5
grand_parent: 中文輸入法
---


# fcitx5 themes


## 相關路徑

### 各個佈景主題放置資料夾

* /usr/share/fcitx5/themes/
* ~/.local/share/fcitx5/themes/

### 佈景主題設定檔路徑

* ~/.config/fcitx5/conf/classicui.conf

執行

``` sh
grep '^Theme=' ~/.config/fcitx5/conf/classicui.conf
```

顯示

```
Theme=default
```

### 預設佈景主題資料夾路徑

* /usr/share/fcitx5/themes/default

``` sh
ls -1 /usr/share/fcitx5/themes/default
```

顯示

```
arrow.png
highlight.png
next.png
panel.png
prev.png
radio.png
theme.conf
```


## 佈景主題

> GitHub Search: 「[fcitx5 theme](https://github.com/search?q=fcitx5+theme&type=Repositories)」

### Default

* [default](https://github.com/fcitx/fcitx5/tree/master/src/ui/classic/themes/default)
* /usr/share/fcitx5/themes/default/

``` sh
sed -i 's/^Theme=.*/Theme=default/g' ~/.config/fcitx5/conf/classicui.conf
```

> 除了可以透過「圖形介面來設定」，也可以透過上面指令來設定。

> 這一招也可以用來設定「[grub theme](https://github.com/samwhelp/note-about-grub/blob/gh-pages/_demo/project/grubrc-profile/grubrc-theme-ctrl/gen/grubrc-theme-ctrl/Section/Sys/Grub.sh#L313)」，或是「[gtkrc](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/part/gtk-config/gtk3/prototype-dracula.sh)」。


### Gruvbox

* [fcitx5-gruvbox](https://github.com/c25vdw/fcitx5-gruvbox) (單純設定，沒有套用圖片)
* ~/.local/share/fcitx5/themes/gruvbox-dark/

``` sh
sed -i 's/^Theme=.*/Theme=gruvbox-dark/g' ~/.config/fcitx5/conf/classicui.conf
```

### Dracula

* [fcitx5-dracula-theme](https://github.com/drbbr/fcitx5-dracula-theme) (透明背景)
* ~/.local/share/fcitx5/themes/dracula/

``` sh
sed -i 's/^Theme=.*/Theme=dracula/g' ~/.config/fcitx5/conf/classicui.conf
```


### Breeze

* [fcitx5-breeze](https://github.com/scratch-er/fcitx5-breeze)


> Package Search:

執行

``` sh
apt-cache search fcitx5 | grep theme
```

顯示

```
fcitx5-material-color - UI theme for fcitx5 following Material Design
```

* [fcitx5-material-color](https://packages.ubuntu.com/jammy/fcitx5-material-color) ([GitHub](https://github.com/hosxy/Fcitx5-Material-Color))


## Link

* Arch Wiki / Fcitx5 / [Themes](https://wiki.archlinux.org/title/Fcitx5#Themes) ([中文](https://wiki.archlinux.org/title/Fcitx5_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)#%E4%B8%BB%E9%A2%98%E5%92%8C%E5%A4%96%E8%A7%82))
