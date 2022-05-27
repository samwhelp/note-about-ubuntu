---
title: theme-package-obsidian
nav_order: 2067
has_children: false
parent: theme-package
grand_parent: 佈景主題
---


# theme-package-obsidian


## 探索

執行

``` sh
apt-cache search obsidian
```

顯示

```
minetest-mod-nether - Minetest mod - Nether portals and materials
obsidian-icon-theme - Intuitive Faenza-like icon theme
```

## Package

執行

``` sh
apt-cache search obsidian | grep theme | sort | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [obsidian-icon-theme](https://packages.ubuntu.com/jammy/obsidian-icon-theme)


## Link

* [iconpack-obsidian](https://github.com/madmaxms/iconpack-obsidian) ([Source](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/obsidian.html))
* [theme-obsidian-2](https://github.com/madmaxms/theme-obsidian-2)
