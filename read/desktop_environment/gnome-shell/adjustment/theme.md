---
title: theme
nav_order: 3011
has_children: false
parent: gnome-shell
grand_parent: 桌面環境
---


# theme


## 微調腳本

| 微調腳本 |
| --- |
| [gnome-shell-theme-main](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-theme-main) |


## 圖形使用者介面程式

可以透過「圖形使用者介面程式」，來更改「佈景主題」。

也就是「Settings / Appearance / Style」。

``` sh
gnome-control-center ubuntu
```

## 指令操作

也可以透過「[gsettings](https://manpages.ubuntu.com/manpages/jammy/en/man1/gsettings.1.html)」這個指令，來更改「佈景主題」。


### color-scheme

``` sh
#gsettings set org.gnome.desktop.interface color-scheme 'default'
#gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
```

> `grep 'color-scheme' /usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml -A 7`


### gtk-theme

``` sh
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'
```


### icon-theme

``` sh
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-blue-dark'
```

### cursor-theme

``` sh
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```

## gnome-tweaks

```
sudo apt-get install gnome-tweaks
```


## Appearance / Gruvbox

> 我個人慣用「[Gruvbox](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/gruvbox.html)」，可以執行下面的指令。

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'
gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'
gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Dracula

> [Dracula](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/dracula.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'
gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'
gsettings set org.gnome.desktop.interface icon-theme 'Dracula'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Yaru-blue-dark

> [Yaru](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/yaru.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Yaru-blue-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-blue-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```

## Appearance / Yaru-prussiangreen-dark

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Yaru-prussiangreen-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-prussiangreen-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-prussiangreen-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Breeze-Dark

> [Breeze](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/breeze.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Breeze-Dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Breeze-Dark'
gsettings set org.gnome.desktop.interface icon-theme 'Breeze-Dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Greybird-dark

> [Greybird](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/greybird.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Greybird-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Greybird-dark'
gsettings set org.gnome.desktop.interface icon-theme 'elementary-xfce-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Numix

> [Numix](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/numix.html)

``` sh
gsettings set org.gnome.desktop.wm.preferences theme 'Numix'
gsettings set org.gnome.desktop.interface gtk-theme 'Numix'
gsettings set org.gnome.desktop.interface icon-theme 'Numix'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```

## Appearance / Numix / Circle Icon

``` sh
gsettings set org.gnome.desktop.wm.preferences theme 'Numix'
gsettings set org.gnome.desktop.interface gtk-theme 'Numix'
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Adwaita-dark

> [Adwaita](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/adwaita.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-blue-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Materia-dark

> [Materia](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/materia.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Materia-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Materia-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-bark-dark'
#gsettings set org.gnome.desktop.interface icon-theme 'Yaru-sage-dark'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Pocillo

> [Pocillo](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/pocillo.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Pocillo-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Pocillo-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Pocillo'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


## Appearance / Obsidian-2-Gray

> [Obsidian](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/obsidian.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Obsidian-2-Gray'
gsettings set org.gnome.desktop.interface gtk-theme 'Obsidian-2-Gray'
gsettings set org.gnome.desktop.interface icon-theme 'Obsidian-Gray'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```


> [Black-Frost-Suru](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/black-frost-suru.html)
> [Obsidian-2-Gray](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/obsidian.html)

``` sh
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences theme 'Obsidian-2-Gray'
gsettings set org.gnome.desktop.interface gtk-theme 'Obsidian-2-Gray'
gsettings set org.gnome.desktop.interface icon-theme 'Black-Frost-Suru'
gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
gsettings set org.gnome.desktop.interface cursor-size 24
```













## 探索

執行

``` sh
cat /usr/share/applications/gnome-ubuntu-panel.desktop
```

顯示

```
[Desktop Entry]
Name=Appearance
Comment=Appearance Settings
Exec=gnome-control-center ubuntu
Icon=preferences-ubuntu-panel
Terminal=false
Type=Application
NoDisplay=true
StartupNotify=true
Categories=GNOME;GTK;Settings;DesktopSettings;X-GNOME-Settings-Panel;X-GNOME-PersonalSettings;X-GNOME-PersonalizationSettings;
OnlyShowIn=ubuntu;
X-GNOME-Bugzilla-Bugzilla=GNOME
X-GNOME-Bugzilla-Product=gnome-control-center
X-GNOME-Bugzilla-Version=41.4
# Translators: those are keywords for the ubuntu control-center panel
Keywords=Dock;Launcher;Theme;Ubuntu;Dark;icons;Yaru;Accent;
X-Ubuntu-Gettext-Domain=gnome-control-center-2.0
```

``` sh
apt-get source gnome-control-center

less gnome-control-center-41.4/panels/ubuntu/cc-ubuntu-panel.c
```

執行

``` sh
gsettings list-recursively | grep theme | sort
```

顯示

```
org.gnome.desktop.interface cursor-theme 'Yaru'
org.gnome.desktop.interface gtk-key-theme 'Default'
org.gnome.desktop.interface gtk-theme 'Yaru'
org.gnome.desktop.interface icon-theme 'Yaru'
org.gnome.desktop.sound theme-name 'Yaru'
org.gnome.desktop.wm.preferences theme 'Adwaita'
org.gnome.Mines theme 'bgcolors'
org.gnome.rhythmbox.plugins.alternative_toolbar dark-theme false
org.gnome.shell.extensions.dash-to-dock apply-custom-theme false
org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots false
org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-color '#ffffff'
org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-width 0
org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#ffffff'
org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
org.gnome.Terminal.Legacy.Settings theme-variant 'dark'
org.yorba.shotwell.preferences.ui use-dark-theme true
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
