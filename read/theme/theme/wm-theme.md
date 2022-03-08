---
title: wm-theme
nav_order: 2020
has_children: false
parent: 佈景主題
---


# wm-theme


## 路徑

放置資料夾路徑，請參考「[themes](https://samwhelp.github.io/note-about-manjaro/read/theme.html#themes)」。


## 輔助工具 / 指令操作


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)


#### get

執行

``` sh
style-ctrl-xfce wm_theme
```

顯示

```
Matcha-dark-aliz
```

#### set

執行

```
style-ctrl-xfce wm_theme Dracula
```

顯示

```
xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Dracula'
```


## 輔助工具 / 圖形介面操作

| 指令 | Desktop Entry | 設定檔 |
| --- | --- | --- | --- |
| `xfwm4-settings` | /usr/share/applications/xfce-wm-settings.desktop | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml |


## 設定檔路徑

執行

``` sh
grep 'name="theme"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
```

顯示

```
    <property name="theme" type="string" value="Dracula"/>
```
