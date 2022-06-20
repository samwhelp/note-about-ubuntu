---
title: favorite-apps
nav_order: 3031
has_children: false
parent: mate
grand_parent: 桌面環境
---


# favorite-apps

## 微調腳本

| 微調腳本 |
| --- |
| [mate-favorite-apps](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/mate/part/mate-favorite-apps) |


## 探索

``` sh
gsettings list-recursively | grep fav | grep mate
```

顯示

```
['']
```

## 設定範例

執行下面指令，

``` sh
gsettings set com.solus-project.brisk-menu favourites "['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'matecc.desktop', 'mate-keybinding.desktop', 'mate-appearance-properties.desktop', 'mate-tweak.desktop', 'atom.desktop']"
```

> 路徑

```
/usr/share/applications/pcmanfm-qt.desktop
/usr/share/applications/org.xfce.mousepad.desktop
/usr/share/applications/org.kde.falkon.desktop
/usr/share/applications/sakura.desktop
/usr/share/applications/matecc.desktop.desktop
/usr/share/applications/mate-appearance-properties.desktop
/usr/share/applications/mate-tweak.desktop
/usr/share/applications/atom.desktop
```
