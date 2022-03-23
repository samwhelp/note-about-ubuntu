---
title: xfce
nav_order: 4001
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---

# xfce

## 相關筆記

* [xfce 探索筆記](https://samwhelp.github.io/note-about-xfce/)

## 微調腳本

* [xfce微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce)


## 設定檔路徑


* [~/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml)
* [~/.config/xfce4/panel/whiskermenu-1.rc](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/panel/whiskermenu-1.rc)
* [~/.config/xfce4/helpers.rc](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/helpers.rc)


## 採用佈景主題

| 項目 | 佈景主題 | 指令 |
| --- | --- | --- |
| [wm-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/theme/wm-theme.html) | [RGapsBlendNoButtons](https://samwhelp.github.io/note-about-ubuntu/read/theme/source/rgaps.html) | ([set](#wm-theme-set)) ([get](#wm-theme-get)) |
| [ui-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/theme/ui-theme.html) (gtk-theme) | [Gruvbox](https://github.com/archcraft-os/archcraft-themes/tree/main/archcraft-gtk-theme-gruvbox/files/Gruvbox) | ([set](#ui-theme-set)) ([get](#ui-theme-get)) |
| [icon-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/icon/icon-theme.html) | [Gruvbox-Dark](https://github.com/jmattheis/gruvbox-dark-icons-gtk) | ([set](#icon-theme-set)) ([get](#icon-theme-get)) |
| [cursor-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/icon/cursor-theme.html) | [Breeze](https://packages.ubuntu.com/jammy/breeze-cursor-theme) | ([set](#cursor-theme-set)) ([get](#cursor-theme-get)) |

相關設定檔是

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml)
* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml#L59)


## 設定指令操作


### wm-theme-set

執行

``` sh
xfconf-query -c 'xfwm4' -p '/general/theme' -s 'RGapsBlendNoButtons'
```

### wm-theme-get

執行

``` sh
xfconf-query -c 'xfwm4' -p '/general/theme'
```

顯示

```
RGapsBlendNoButtons
```


### ui-theme-set

執行

``` sh
xfconf-query -c 'xsettings' -p '/Net/ThemeName' -s 'Gruvbox'
```

### ui-theme-get

執行

``` sh
xfconf-query -c 'xsettings' -p '/Net/ThemeName'
```

顯示

```
Gruvbox
```



### icon-theme-set

執行

``` sh
xfconf-query -c 'xsettings' -p '/Net/IconThemeName' -s 'Gruvbox-Dark'
```

### icon-theme-get

執行

``` sh
xfconf-query -c 'xsettings' -p '/Net/IconThemeName'
```

顯示

```
Gruvbox-Dark
```


### cursor-theme-set

執行

``` sh
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeName' -s 'Breeze'
```

執行

``` sh
xfconf-query -c 'xsettings' -p '/Gtk/CursorThemeSize' -s '24'
```

### cursor-theme-get

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
