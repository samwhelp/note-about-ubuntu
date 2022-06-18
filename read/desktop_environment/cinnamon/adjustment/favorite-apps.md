---
title: favorite-apps
nav_order: 3031
has_children: false
parent: cinnamon
grand_parent: 桌面環境
---


# favorite-apps

## 微調腳本

| 微調腳本 |
| --- |
| [cinnamon-favorite-apps](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-favorite-apps) |


## 探索

``` sh
gsettings list-recursively | grep favorite-apps | grep cinnamon
```

顯示

```
org.cinnamon favorite-apps ['firefox.desktop', 'firefox-esr.desktop', 'cinnamon-settings.desktop', 'pidgin.desktop', 'org.gnome.Terminal.desktop', 'nemo.desktop']
```

## 設定範例

執行下面指令，

``` sh
gsettings set org.cinnamon favorite-apps "['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'cinnamon-settings.desktop']"
```

> 路徑

```
/usr/share/applications/pcmanfm-qt.desktop
/usr/share/applications/org.xfce.mousepad.desktop
/usr/share/applications/org.kde.falkon.desktop
/usr/share/applications/sakura.desktop
/usr/share/applications/innamon-settings.desktop
```
