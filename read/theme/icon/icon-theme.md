---
title: icon-theme
nav_order: 2030
has_children: false
parent: 佈景主題
---


# icon-theme


## 路徑

放置資料夾路徑，請參考「[icons](https://samwhelp.github.io/note-about-ubuntu/read/theme.html#icons)」。


## 設定檔路徑

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/full/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml#L6)

執行

``` sh
grep 'name="IconThemeName"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

``` xml
		<property name="IconThemeName" type="string" value="Gruvbox-Dark"/>
```

## 輔助工具 / 指令操作


### xfconf-query

* [xfconf-query](https://docs.xfce.org/xfce/xfconf/xfconf-query)
* man [xfconf-query](http://manpages.ubuntu.com/manpages/jammy/en/man1/xfconf-query.1.html)


#### xfconf-query-set

執行

``` sh
xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Gruvbox-Dark'
```

#### xfconf-query-get

執行

``` sh
xfconf-query -c 'xsettings' -p '/Net/IconThemeName'
```

顯示

```
Gruvbox-Dark
```


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)


#### style-ctrl-xfce-set

執行

``` sh
style-ctrl-xfce icon_theme Gruvbox-Dark
```

顯示

```
xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Gruvbox-Dark'
```


#### style-ctrl-xfce-get

執行

``` sh
style-ctrl-xfce icon_theme
```

顯示

```
Gruvbox-Dark
```


## 輔助工具 / 圖形介面操作

| 指令 | Desktop Entry | For UI | 設定檔 |
| --- | --- | --- | --- |
| `xfce4-appearance-settings` | /usr/share/applications/xfce-ui-settings.desktop | Gtk | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml |
| `qt5ct` | /usr/share/applications/qt5ct.desktop | Qt | ~/.config/qt5ct/qt5ct.conf |
