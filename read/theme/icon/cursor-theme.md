---
title: cursor-theme
nav_order: 2040
has_children: false
parent: 佈景主題
---


# cursor-theme


## 路徑

放置資料夾路徑，請參考「[icons](https://samwhelp.github.io/note-about-ubuntu/read/theme.html#icons)」。


## 輔助工具 / 指令操作


### style-ctrl-xfce

* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)


#### get

執行

``` sh
style-ctrl-xfce cursor_theme
```

顯示

```
xcursor-breeze 24
```

#### set

執行

```
style-ctrl-xfce cursor_theme xcursor-breeze-snow
```

顯示

```
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'xcursor-breeze-snow'
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'
```



## 設定檔路徑

執行

``` sh
grep 'name="CursorThemeName"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

```
    <property name="CursorThemeName" type="string" value="xcursor-breeze-snow"/>
```


執行

``` sh
grep 'name="CursorThemeSize"' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

```
    <property name="CursorThemeSize" type="int" value="24"/>
```


## Link

* [arch package search](https://samwhelp.github.io/note-about-manjaro/read/theme/package-search/xcursor.html)
* [https://wiki.archlinux.org/title/Cursor_themes](https://wiki.archlinux.org/title/Cursor_themes)
* [https://www.gnome-look.org/browse?cat=107&ord=latest](https://www.gnome-look.org/browse?cat=107&ord=latest)
