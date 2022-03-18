---
title: openbox
nav_order: 4016
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# openbox

## 安裝

執行下面指令，安裝「[openbox](https://packages.ubuntu.com/jammy/openbox)」。

``` sh
sudo apt-get install openbox
```

## 微調腳本

* [微調腳本](https://github.com/samwhelp/note-about-openbox/tree/gh-pages/_demo/config/openbox-config/main)


## 採用佈景主題

### Openbox

| 項目 | 佈景主題 |
| --- | --- |
| [wm-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/theme/wm-theme.html) | [Numix](https://packages.ubuntu.com/jammy/numix-gtk-theme) |
| [ui-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/theme/ui-theme.html) | [Gruvbox](https://github.com/archcraft-os/archcraft-themes/tree/main/archcraft-gtk-theme-gruvbox/files/Gruvbox) |
| [icon-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/icon/icon-theme.html) | [Gruvbox-Dark](https://github.com/jmattheis/gruvbox-dark-icons-gtk) |
| [cursor-theme](https://samwhelp.github.io/note-about-ubuntu/read/theme/icon/cursor-theme.html) | [Breeze](https://packages.ubuntu.com/jammy/breeze-cursor-theme) |

相關設定檔是

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml)
* [~/.config/openbox/rc.xml](https://github.com/samwhelp/note-about-openbox/blob/gh-pages/_demo/config/openbox-config/main/config/openbox/rc.xml#L62)



### tint2

執行下面指令，安裝

``` sh
sudo apt-get install tint2 gsimplecal
```

* Ubuntu Package / [tint2](https://packages.ubuntu.com/jammy/tint2)
* Ubuntu Package / [gsimplecal](https://packages.ubuntu.com/jammy/gsimplecal)


### logout

下面「obsession-logout」或「lxsession-logout」，選擇其一

在「[menu.xml](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/wm/openbox/config/openbox/menu.xml#L199)」有使用到。

#### obsession

執行下面指令，安裝

``` sh
sudo apt-get install obsession
```

* Ubuntu Package / [obsession](https://packages.ubuntu.com/jammy/obsession)
* $ man [obsession-logout](http://manpages.ubuntu.com/manpages/jammy/en/man1/obsession-logout.1.html)
* $ man [obsession-exit](http://manpages.ubuntu.com/manpages/jammy/en/man1/obsession-exit.1.html)
* $ man [xdg-autostart](http://manpages.ubuntu.com/manpages/jammy/en/man1/xdg-autostart.1.html)

#### lxsession-logout

執行下面指令，安裝

``` sh
sudo apt-get install lxsession-logout
```

* Ubuntu Package / [lxsession-logout](https://packages.ubuntu.com/jammy/lxsession-logout)
* $ man [obsession-logout](http://manpages.ubuntu.com/manpages/jammy/en/man1/lxsession-logout.1.html)


## Link

* [http://openbox.org/](http://openbox.org/)
* Arch Wiki / [Openbox](https://wiki.archlinux.org/title/Openbox)
* [openbox 探索筆記](https://samwhelp.github.io/note-about-openbox/)



## 探索

執行

``` sh
dpkg -L openbox | grep xml
```

顯示

```
/etc/xdg/openbox/menu.xml
/etc/xdg/openbox/rc.xml
/usr/share/doc/openbox/rc-mouse-focus.xml.gz
```


執行

``` sh
apt-cache search openbox | sort -u
```

顯示

```
gnome-panel-control - command line utility to invoke GNOME panel run dialog/menu
gsimplecal - lightweight GUI calendar application
jwm - very small lightweight pure X11 window manager with tray and menus
libobrender32v5 - rendering library for openbox themes
libobt2v5 - parsing library for openbox
lxhotkey-plugin-openbox - LXHotkey keyboard shortcuts configurator (Openbox support plugin)
lxsession-logout - utility to logout from a LXDE or an Openbox session
obconf - preferences manager for Openbox window manager
obconf-qt - Openbox configuration with a Qt interface
openbox-dev - development files for the openbox window manager
openbox-gnome-session - command line utility to run Openbox as GNOME session
openbox-kde-session - command line utility to run Openbox as KDE SC session
openbox-lxde-session - LXDE session manager and configuration files
openbox-menu - openbox pipe-menu to display entries in *.desktop files
openbox - standards-compliant, fast, light-weight and extensible window manager
stalonetray - Standalone freedesktop.org and KDE systray implementation
tdc - Tiny Dockable Clock
tint2 - lightweight taskbar
variety - Wallpaper changer, downloader and manager
wmdocker - System tray for KDE3/GNOME2 docklet applications
```
