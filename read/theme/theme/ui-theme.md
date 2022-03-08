---
title: ui-theme
nav_order: 2010
has_children: false
parent: 佈景主題
---


# ui-theme


## 路徑

放置資料夾路徑，請參考「[themes](https://samwhelp.github.io/note-about-manjaro/read/theme.html#themes)」。


## 輔助工具 / 指令操作


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)


#### get

執行

``` sh
style-ctrl-xfce ui_theme
```

顯示

```
Matcha-dark-aliz
```

#### set

執行

```
style-ctrl-xfce ui_theme Dracula
```

顯示

```
xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Dracula'
```


## 輔助工具 / 圖形介面操作

| 指令 | Desktop Entry | For UI | 設定檔 |
| --- | --- | --- | --- |
| `xfce4-appearance-settings` | /usr/share/applications/xfce-ui-settings.desktop | Gtk | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml |
| `qt5ct` | /usr/share/applications/qt5ct.desktop | Qt | ~/.config/qt5ct/qt5ct.conf |


> 我的「qt5ct/appearance/style」是設定「[gtk2](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/full/xfce/config/qt5ct/qt5ct.conf#L5)」，所以 Qt 應用程式的樣式，會根據 gtk2 的佈景主題的設定。


## 設定檔路徑

執行

``` sh
grep 'name="ThemeName"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

```
    <property name="ThemeName" type="string" value="Dracula"/>
```
