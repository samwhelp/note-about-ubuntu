---
title: icon-theme
nav_order: 2030
has_children: false
parent: 佈景主題
---


# icon-theme


## 路徑

放置資料夾路徑，請參考「[icons](https://samwhelp.github.io/note-about-manjaro/read/theme.html#icons)」。


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)


#### get

執行

``` sh
style-ctrl-xfce icon_theme
```

顯示

```
Papirus-Dark
```

#### set

執行

```
style-ctrl-xfce icon_theme Dracula
```

顯示

```
xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Dracula'
```


## 輔助工具 / 圖形介面操作

| 指令 | Desktop Entry | For UI | 設定檔 |
| --- | --- | --- | --- |
| `xfce4-appearance-settings` | /usr/share/applications/xfce-ui-settings.desktop | Gtk | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml |
| `qt5ct` | /usr/share/applications/qt5ct.desktop | Qt | ~/.config/qt5ct/qt5ct.conf |



## 設定檔路徑

執行

``` sh
grep 'name="IconThemeName"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

```
    <property name="IconThemeName" type="string" value="Dracula"/>
```
