---
title: grub-theme
nav_order: 2053
has_children: false
parent: theme-package-search
grand_parent: 佈景主題
---


# grub-theme

## 探索

執行下面指令查詢

``` sh
apt-cache search grub-theme | sort
```

顯示

```
grub-theme-breeze - Breeze theme for GRUB 2
grub-theme-starfield - GRand Unified Bootloader, version 2 (starfield theme)
lubuntu-grub-theme - Theme for Lubuntu grub screen
```

## Package

執行

``` sh
apt-cache search grub-theme | sort | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [grub-theme-breeze](https://packages.ubuntu.com/jammy/grub-theme-breeze)
* [grub-theme-starfield](https://packages.ubuntu.com/jammy/grub-theme-starfield)
* [lubuntu-grub-theme](https://packages.ubuntu.com/jammy/lubuntu-grub-theme)


## 相關筆記

* [grub 探索筆記](https://github.com/samwhelp/note-about-grub)
