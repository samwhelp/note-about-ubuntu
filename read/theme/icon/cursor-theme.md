---
title: cursor-theme
nav_order: 2040
has_children: false
parent: 佈景主題
---


# cursor-theme


## 路徑

放置資料夾路徑，請參考「[icons](https://samwhelp.github.io/note-about-ubuntu/read/theme.html#icons)」。


## 設定檔路徑

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml#L35)

執行

``` sh
grep 'name="CursorThemeName"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

``` xml
		<property name="CursorThemeName" type="string" value="Breeze"/>
```


執行

``` sh
grep 'name="CursorThemeSize"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

``` xml
		<property name="CursorThemeSize" type="int" value="24"/>
```


## 輔助工具 / 指令操作


### xfconf-query

* [xfconf-query](https://docs.xfce.org/xfce/xfconf/xfconf-query)
* man [xfconf-query](http://manpages.ubuntu.com/manpages/jammy/en/man1/xfconf-query.1.html)

#### xfconf-query-set

執行

``` sh
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'Breeze'
```

執行

``` sh
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'
```

#### xfconf-query-get



執行

``` sh
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName'
```

顯示

```
Breeze
```


執行

``` sh
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize'
```

顯示

```
24
```


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)

#### style-ctrl-xfce-set

執行

```
style-ctrl-xfce cursor_theme Breeze
```

顯示

```
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'Breeze'
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'
```


#### style-ctrl-xfce-get

執行

``` sh
style-ctrl-xfce cursor_theme
```

顯示

```
Breeze 24
```


## Link

* [arch package search](https://samwhelp.github.io/note-about-manjaro/read/theme/package-search/xcursor.html)
* [https://wiki.archlinux.org/title/Cursor_themes](https://wiki.archlinux.org/title/Cursor_themes)
* [https://www.gnome-look.org/browse?cat=107&ord=latest](https://www.gnome-look.org/browse?cat=107&ord=latest)
