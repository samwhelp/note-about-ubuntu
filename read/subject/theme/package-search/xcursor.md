---
title: xcursor
nav_order: 2052
has_children: false
parent: theme-package-search
grand_parent: 佈景主題
---


# xcursor


## 探索

執行下面指令查詢

``` sh
apt-cache search cursor-theme | sort
```

顯示

```
breeze-cursor-theme - Default Plasma cursor theme
chameleon-cursor-theme - modern but not gaudy X11 mouse theme
dmz-cursor-theme - Style neutral, scalable cursor theme
libxcursor1 - X cursor management library
oxygen-cursor-theme-extra - Oxygen mouse cursor theme - extra colors
oxygen-cursor-theme - Oxygen mouse cursor theme
phinger-cursor-theme - The most over-engineered cursor theme
xcursor-themes - Base X cursor themes
```


執行下面指令查詢

``` sh
apt-cache search xcursor | sort
```

顯示

```
comixcursors-lefthanded-opaque - X11 mouse pointer themes with a comic art feeling (LH, opaque)
comixcursors-lefthanded - X11 mouse pointer themes with a comic art feeling (LH, translucent)
comixcursors-righthanded-opaque - X11 mouse pointer themes with a comic art feeling (RH, opaque)
comixcursors-righthanded - X11 mouse pointer themes with a comic art feeling (RH, translucent)
librust-x11-dev - X11 library bindings for Rust - Rust source code
libxcb-cursor0 - utility libraries for X C Binding -- cursor
libxcb-cursor-dev - utility libraries for X C Binding -- cursor, development files
libxcursor1 - X cursor management library
libxcursor-dev - X cursor management library (development files)
x11-apps - X applications
xcursor-themes - Base X cursor themes
```

## Package

執行

``` sh
apt-cache search cursor-theme | sort | awk -F ' - ' '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")"}'
```

* [breeze-cursor-theme](https://packages.ubuntu.com/jammy/breeze-cursor-theme)
* [chameleon-cursor-theme](https://packages.ubuntu.com/jammy/chameleon-cursor-theme)
* [dmz-cursor-theme](https://packages.ubuntu.com/jammy/dmz-cursor-theme)
* [libxcursor1](https://packages.ubuntu.com/jammy/libxcursor1)
* [oxygen-cursor-theme-extra](https://packages.ubuntu.com/jammy/oxygen-cursor-theme-extra)
* [oxygen-cursor-theme](https://packages.ubuntu.com/jammy/oxygen-cursor-theme)
* [phinger-cursor-theme](https://packages.ubuntu.com/jammy/phinger-cursor-theme)
* [xcursor-themes](https://packages.ubuntu.com/jammy/xcursor-themes)
