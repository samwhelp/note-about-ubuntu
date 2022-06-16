---
title: theme
nav_order: 3011
has_children: false
parent: Cinnamon
grand_parent: 桌面環境
---


# theme


## 微調腳本

* [微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-theme-main)


## 圖形使用者介面程式

可以透過「圖形使用者介面程式」，來更改「佈景主題」。

也就是「System Settings / Themes / Themes」。

``` sh
cinnamon-settings themes
```

## 指令操作

也可以透過「[gsettings](https://manpages.ubuntu.com/manpages/jammy/en/man1/gsettings.1.html)」這個指令，來更改「佈景主題」。

### cinnamon-theme

``` sh
gsettings set org.cinnamon.theme name 'Blue-Submarine'
```

### gtk-theme

``` sh
gsettings set org.cinnamon.desktop.interface gtk-theme 'Yaru-blue-dark'
```

### icon-theme

``` sh
gsettings set org.cinnamon.desktop.interface icon-theme 'Yaru-blue-dark'
```

### cursor-theme

``` sh
gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze'
```



## Appearance / Gruvbox

> 我個人慣用「[Gruvbox](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/source/gruvbox.html)」，可以執行下面的指令。

``` sh
gsettings set org.cinnamon.theme name 'Gruvbox'
gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze'
gsettings set org.cinnamon.desktop.interface gtk-theme 'Gruvbox'
gsettings set org.cinnamon.desktop.interface icon-theme 'Gruvbox-Dark'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Gruvbox'


gsettings set org.cinnamon.desktop.interface gtk-theme-backup 'Adwaita'
gsettings set org.cinnamon.desktop.interface icon-theme-backup 'gnome'
gsettings set org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'
```








## 探索

執行

``` sh
ls -1 /usr/share/applications | grep cinnamon | sort
```

顯示

```
cinnamon2d.desktop
cinnamon-color-panel.desktop
cinnamon.desktop
cinnamon-display-panel.desktop
cinnamon-killer-daemon.desktop
cinnamon-menu-editor.desktop
cinnamon-network-panel.desktop
cinnamon-onscreen-keyboard.desktop
cinnamon-settings-applets.desktop
cinnamon-settings-backgrounds.desktop
cinnamon-settings-calendar.desktop
cinnamon-settings-default.desktop
cinnamon-settings-desklets.desktop
cinnamon-settings.desktop
cinnamon-settings-desktop.desktop
cinnamon-settings-effects.desktop
cinnamon-settings-extensions.desktop
cinnamon-settings-fonts.desktop
cinnamon-settings-general.desktop
cinnamon-settings-hotcorner.desktop
cinnamon-settings-info.desktop
cinnamon-settings-keyboard.desktop
cinnamon-settings-mouse.desktop
cinnamon-settings-notifications.desktop
cinnamon-settings-online-accounts.desktop
cinnamon-settings-panel.desktop
cinnamon-settings-power.desktop
cinnamon-settings-privacy.desktop
cinnamon-settings-screensaver.desktop
cinnamon-settings-sound.desktop
cinnamon-settings-startup.desktop
cinnamon-settings-themes.desktop
cinnamon-settings-tiling.desktop
cinnamon-settings-universal-access.desktop
cinnamon-settings-user.desktop
cinnamon-settings-users.desktop
cinnamon-settings-windows.desktop
cinnamon-settings-workspaces.desktop
cinnamon-wacom-panel.desktop
org.cinnamon.ScreenSaver.desktop
x-cinnamon-mimeapps.list
```

執行

``` sh
grep '^Exec=' /usr/share/applications/cinnamon-settings-themes.desktop
```

顯示

```
Exec=cinnamon-settings themes
```

``` sh
apt-get source cinnamon-settings
```

執行

``` sh
gsettings list-recursively | grep theme | grep cinnamon |sort
```

顯示

```
org.cinnamon.desktop.interface cursor-theme 'Adwaita'
org.cinnamon.desktop.interface gtk-key-theme 'Default'
org.cinnamon.desktop.interface gtk-theme 'Adwaita'
org.cinnamon.desktop.interface gtk-theme-backup 'Adwaita'
org.cinnamon.desktop.interface icon-theme-backup 'gnome'
org.cinnamon.desktop.interface icon-theme 'gnome'
org.cinnamon.desktop.screensaver screensaver-webkit-theme ''
org.cinnamon.desktop.sound theme-name 'freedesktop'
org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'
org.cinnamon.desktop.wm.preferences theme 'Default'
org.cinnamon.theme gtk-version-scrollbar-multiplier 1.5
org.cinnamon.theme name ''
org.cinnamon.theme symbolic-relative-size 0.67000000000000004
org.cinnamon.theme theme-cache-updated 0
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


## cinnamon-theme

執行

``` sh
find /usr/share/themes/ -name cinnamon
```

顯示

```
/usr/share/themes/BlueMenta/cinnamon
/usr/share/themes/Green-Submarine/cinnamon
/usr/share/themes/Blue-Submarine/cinnamon
/usr/share/themes/BlackMATE/cinnamon
/usr/share/themes/Menta/cinnamon
```

執行

``` sh
dpkg -S $(find /usr/share/themes/ -name cinnamon)
```

顯示

```
mate-themes: /usr/share/themes/BlueMenta/cinnamon
mate-themes: /usr/share/themes/Green-Submarine/cinnamon
mate-themes: /usr/share/themes/Blue-Submarine/cinnamon
mate-themes: /usr/share/themes/BlackMATE/cinnamon
mate-themes: /usr/share/themes/Menta/cinnamon
```
