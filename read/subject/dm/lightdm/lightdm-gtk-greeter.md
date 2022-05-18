---
title: lightdm-gtk-greeter
nav_order: 4101
has_children: false
parent: lightdm
grand_parent: XDM
---


# lightdm-gtk-greeter


## 微調腳本

* [lightdm-gtk-greeter 微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/dm/lightdm/lightdm-gtk-greeter)


## 設定檔路徑

* [/etc/lightdm/lightdm-gtk-greeter.conf](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/dm/lightdm/lightdm-gtk-greeter/config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf)


## 安裝指令

``` sh
sudo apt-get install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
```

``` sh
sudo apt-get onboard
```

``` sh
sudo apt-get yaru-theme-gtk yaru-theme-icon breeze-cursor-theme
```

> 安裝套件列表: [package-list.txt](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/dm/lightdm/lightdm-gtk-greeter/)

> 安裝套件腳本: [package-install.sh](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/dm/lightdm/lightdm-gtk-greeter/package-install.sh)


## 切換XDM指令

``` sh
sudo dpkg-reconfigure lightdm
```

會出現一個「XDM 選單」提供選擇，請選擇「lightdm」，按下「OK」就會切換，

接著登出，或是重新開機，就可以看到使用「lightdm」當作登入的介面。
