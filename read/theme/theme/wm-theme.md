---
title: wm-theme
nav_order: 2020
has_children: false
parent: 佈景主題
---


# wm-theme


## 放置路徑

放置資料夾路徑，請參考「[themes](https://samwhelp.github.io/note-about-ubuntu/read/theme.html#themes)」。


## 設定檔路徑

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml#L59)

執行

``` sh
grep 'name="theme"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
```

顯示

``` xml
		<property name="theme" type="string" value="Gruvbox"/>
```

## 輔助工具 / 指令操作


### xfconf-query

* [xfconf-query](https://docs.xfce.org/xfce/xfconf/xfconf-query)
* man [xfconf-query](http://manpages.ubuntu.com/manpages/jammy/en/man1/xfconf-query.1.html)

#### xfconf-query-set

執行

``` sh
xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Gruvbox'
```

#### xfconf-query-get

執行

``` sh
xfconf-query -c 'xfwm4' -p '/general/theme'
```

顯示

```
Gruvbox
```


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)


#### style-ctrl-xfce-set

執行

```
style-ctrl-xfce wm_theme Gruvbox
```

顯示

```
xfconf-query -c 'xfwm4' -p '/general/theme' -s 'Gruvbox'
```


#### style-ctrl-xfce-get

執行

``` sh
style-ctrl-xfce wm_theme
```

顯示

```
Gruvbox
```


## 輔助工具 / 圖形介面操作

| 指令 | Desktop Entry | 設定檔 |
| --- | --- | --- | --- |
| `xfwm4-settings` | /usr/share/applications/xfce-wm-settings.desktop | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml |
