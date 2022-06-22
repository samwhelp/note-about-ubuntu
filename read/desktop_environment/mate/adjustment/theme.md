---
title: theme
nav_order: 3011
has_children: false
parent: mate
grand_parent: 桌面環境
---


# theme


## 微調腳本

| 微調腳本 |
| --- |
| [mate-theme-main](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/mate/part/mate-theme-main) |



## 圖形使用者介面程式

可以透過「圖形使用者介面程式」，來更改「佈景主題」。

也就是「Appearance」。

``` sh
mate-appearance-properties
```

* /usr/share/applications/mate-appearance-properties.desktop

## 指令操作

也可以透過「[gsettings](https://manpages.ubuntu.com/manpages/jammy/en/man1/gsettings.1.html)」這個指令，來更改「佈景主題」。

### wm-theme

``` sh
gsettings set org.mate.Marco.general theme 'Numix'
```

### gtk-theme

``` sh
gsettings set org.mate.interface gtk-theme 'Yaru-blue-dark'
```

### icon-theme

``` sh
gsettings set org.mate.interface icon-theme 'Yaru-blue-dark'
```

### cursor-theme

``` sh
gsettings set org.mate.peripherals-mouse cursor-theme 'Breeze'
gsettings set org.mate.peripherals-mouse cursor-size 24
```



## Appearance / Gruvbox

> 我個人慣用「[Gruvbox](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/gruvbox.html)」，可以執行下面的指令。

``` sh
gsettings set org.mate.Marco.general theme 'Gruvbox'
gsettings set org.mate.interface gtk-theme 'Gruvbox'
gsettings set org.mate.interface icon-theme 'Gruvbox-Dark'
gsettings set org.mate.peripherals-mouse cursor-theme 'Breeze'
gsettings set org.mate.peripherals-mouse cursor-size 24
```








## 探索

執行

``` sh
ls -1 /usr/share/applications | grep mate | sort
```

顯示

```
mate-about.desktop
mate-about-me.desktop
mate-appearance-properties.desktop
mate-at-properties.desktop
mate-calc.desktop
matecc.desktop
mate-color-select.desktop
mate-default-applications-properties.desktop
mate-dictionary.desktop
mate-disk-image-mounter.desktop
mate-disk-usage-analyzer.desktop
mate-display-properties.desktop
mate-font-viewer.desktop
mate-keybinding.desktop
mate-keyboard.desktop
mate-mimeapps.list
mate-network-properties.desktop
mate-network-scheme.desktop
mate-notification-properties.desktop
mate-panel.desktop
mate-power-preferences.desktop
mate-power-statistics.desktop
mate-screensaver-preferences.desktop
mate-screenshot.desktop
mate-search-tool.desktop
mate-session-properties.desktop
mate-settings-mouse.desktop
mate-system-log.desktop
mate-system-monitor.desktop
mate-terminal.desktop
mate-theme-installer.desktop
mate-time-admin.desktop
mate-tweak.desktop
mate-user-guide.desktop
mate-volume-control.desktop
mate-window-properties.desktop
```

執行

``` sh
grep '^Exec=' /usr/share/applications/mate-appearance-properties.desktop
```

顯示

```
Exec=mate-appearance-properties %F
```

執行

``` sh
dpkg -S /usr/share/applications/mate-appearance-properties.desktop
```

顯示

```
mate-control-center: /usr/share/applications/mate-appearance-properties.desktop
```

執行

``` sh
dpkg -S $(which mate-appearance-properties)
```

顯示

```
mate-control-center: /usr/bin/mate-appearance-properties
```

執行

``` sh
dpkg -S mate-appearance-properties
```

顯示

```
mate-control-center: /usr/bin/mate-appearance-properties
mate-control-center: /usr/share/applications/mate-appearance-properties.desktop
mate-control-center-common: /usr/share/man/man1/mate-appearance-properties.1.gz
```

執行

``` sh
apt-get source mate-control-center
```

執行

``` sh
gsettings list-recursively | grep theme | grep mate | sort
```

顯示

```
org.mate.control-center.appearance more-themes-url 'http://mate-desktop.org/themes/'
org.mate.file-views icon-theme 'crux_teal'
org.mate.interface gtk-key-theme 'Default'
org.mate.interface gtk-theme 'Gruvbox'
org.mate.interface icon-theme 'Gruvbox-Dark'
org.mate.lockdown disable-theme-settings false
org.mate.Marco.general theme 'Gruvbox'
org.mate.NotificationDaemon theme 'slider'
org.mate.peripherals-mouse cursor-theme 'Breeze'
org.mate.screensaver lock-dialog-theme 'default'
org.mate.screensaver themes ['screensavers-footlogo-floaters']
org.mate.sound theme-name '__no_sounds'
```

## themes

執行


``` sh
ls -1 /usr/share/themes/
```

顯示

```
Adwaita
Adwaita-dark
Artwiz-boxed
Bear2
Breeze
Breeze-Dark
Breeze-ob
Bright
Clearlooks
Clearlooks-3.4
Clearlooks-Olive
Daloa
Default
Default-hdpi
Default-xhdpi
Emacs
Greybird
Greybird-accessibility
Greybird-bright
Greybird-compact
Greybird-dark
Greybird-dark-accessibility
HighContrast
Kokodi
Mikachu
Moheli
Natura
Nightmare
Nightmare-01
Nightmare-02
Nightmare-03
Numix
Onyx
Onyx-Citrus
Orang
Raleigh
Retro
Smoke
Syscrash
Yaru
Yaru-bark
Yaru-bark-dark
Yaru-blue
Yaru-blue-dark
Yaru-dark
Yaru-dark-hdpi
Yaru-dark-xhdpi
Yaru-hdpi
Yaru-magenta
Yaru-magenta-dark
Yaru-olive
Yaru-olive-dark
Yaru-prussiangreen
Yaru-prussiangreen-dark
Yaru-purple
Yaru-purple-dark
Yaru-red
Yaru-red-dark
Yaru-sage
Yaru-sage-dark
Yaru-viridian
Yaru-viridian-dark
Yaru-xhdpi
'ZOMG-PONIES!'
```

## icons

執行

``` sh
ls -1 /usr/share/icons/
```

顯示

```
Adwaita
breeze
breeze_cursors
breeze-dark
Breeze_Snow
default
desktop-base
DMZ-Black
DMZ-White
elementary-xfce
elementary-xfce-dark
elementary-xfce-darker
elementary-xfce-darkest
gnome
gnome-logo-text-dark.svg
gnome-logo-text.svg
handhelds
hicolor
HighContrast
Humanity
Humanity-Dark
locolor
LoginIcons
Numix
Numix-Circle
Numix-Circle-Light
Numix-Light
oxygen
redglass
Tango
ubuntu-mono-dark
ubuntu-mono-light
vendor
whiteglass
Yaru
Yaru-bark
Yaru-bark-dark
Yaru-blue
Yaru-blue-dark
Yaru-dark
Yaru-magenta
Yaru-magenta-dark
Yaru-olive
Yaru-olive-dark
Yaru-prussiangreen
Yaru-prussiangreen-dark
Yaru-purple
Yaru-purple-dark
Yaru-red
Yaru-red-dark
Yaru-sage
Yaru-sage-dark
Yaru-viridian
Yaru-viridian-dark
```

## cursors

執行

``` sh
find /usr/share/icons/ -name cursor.theme
```

顯示

```
/usr/share/icons/DMZ-Black/cursor.theme
/usr/share/icons/Adwaita/cursor.theme
/usr/share/icons/DMZ-White/cursor.theme
/usr/share/icons/Yaru/cursor.theme
```

執行

```
find /usr/share/icons/ -name cursors
```

顯示

```
/usr/share/icons/breeze_cursors/cursors
/usr/share/icons/redglass/cursors
/usr/share/icons/DMZ-Black/cursors
/usr/share/icons/whiteglass/cursors
/usr/share/icons/DMZ-White/cursors
/usr/share/icons/Yaru/cursors
/usr/share/icons/Breeze_Snow/cursors
/usr/share/icons/handhelds/cursors
```

執行

``` sh
tree /usr/share/icons/Yaru/cursors/
```

執行

``` sh
ls -1 /usr/share/icons/Yaru/cursors/
```


執行

``` sh
grep '^Name=' /usr/share/icons/breeze_cursors/index.theme
```

顯示

```
Name=Breeze
```
