---
title: 佈景主題
nav_order: 2000
has_children: true
---


# 佈景主題


## 目前採用佈景主題

| 環境 |
| --- |
| [xfce](https://samwhelp.github.io/note-about-ubuntu/read/adjustment/full/xfce.html) |
| [openbox](https://samwhelp.github.io/note-about-ubuntu/read/adjustment/wm/openbox.html) |

## Path

### Themes

| 路徑 | 區域 | 相容性 |
| --- | --- | --- |
| ~/.themes | 個人區域 | 高 |
| ~/.local/share/themes | 個人區域 | |
| /usr/share/themes | 系統全域 | 高 |
| /usr/local/share/themes | 系統全域 |  |

> themes 資料夾包含了「[ui-theme](theme/theme/ui-theme)」或是「[wm-theme](theme/theme/wm-theme)」。

### Icons

| 路徑 | 區域 | 相容性 |
| --- | --- | --- |
| ~/.icons | 個人區域 | 高 |
| ~/.local/share/icons | 個人區域 | |
| /usr/share/icons | 系統全域 | 高 |
| /usr/local/share/icons | 系統全域 | |

> icons 資料夾包含了「[icon-theme](theme/icon/icon-theme)」或是「[cursor-theme](theme/icon/cursor-theme)」。


## 輔助工具

### 指令操作

| 指令 |
| --- |
| `xfconf-query` |

> 還有一個相對的圖形介面操作工具 `xfce4-settings-editor`

### 圖形介面操作

| 指令 | Desktop Entry | 設定檔 |
| --- | --- | --- |
| `xfwm4-settings` | /usr/share/applications/xfce-wm-settings.desktop | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml |
| `xfce4-appearance-settings` | /usr/share/applications/xfce-ui-settings.desktop | ~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml |
| `qt5ct` | /usr/share/applications/qt5ct.desktop | ~/.config/qt5ct/qt5ct.conf |

> 我的「qt5ct/appearance/style」是設定「[gtk2](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/full/xfce/config/qt5ct/qt5ct.conf#L5)」，所以 Qt 應用程式的樣式，會根據 gtk2 的佈景主題的設定。


## gtk

> 若是執行其他的「Window Manager」，沒有執行「xfsettingsd」或是「xsettingsd」，則「gtk」就會根據下面檔案的設定

| 設定檔 | 版本 |
| [~/.config/gtk-3.0/settings.ini](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/full/xfce/config/gtk3/settings.ini) | gtk3 |
| [~/.gtkrc-2.0](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/full/xfce/config/gtk2/.gtkrc-2.0) | gtk2 |

* Arch Wiki / [Gtk](https://wiki.archlinux.org/title/GTK#Configuration)


## 專案

* [style-theme](https://github.com/samwhelp/note-about-manjaro/tree/gh-pages/_demo/project/style-xfce/style-theme)
* [style-switch-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-switch-xfce)
* [style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce)


## Palette

* [gruvbox](https://github.com/morhetz/gruvbox)
* [dracula](https://draculatheme.com/) ([GitHub](https://github.com/dracula/dracula-theme))
* [nord](https://www.nordtheme.com/) ([GitHub](https://github.com/arcticicestudio/nord))
* [rose-pine](https://rosepinetheme.com/palette) ([GitHub](https://github.com/rose-pine))
* [catppuccin](https://github.com/catppuccin/catppuccin#-palette)


## Guide

* [Gtk theming guide](https://gtkthemingguide.surajmandal.in/) ([GitHub](https://github.com/Fausto-Korpsvart/Gtk-Theming-Guide))
