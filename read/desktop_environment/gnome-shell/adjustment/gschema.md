---
title: gschema
nav_order: 3090
has_children: false
parent: gnome-shell
grand_parent: 桌面環境
---

# gschema

## 探索

執行

``` sh
ls -1 /usr/share/glib-2.0/schemas/*.override
```

顯示

``` sh
/usr/share/glib-2.0/schemas/00_org.gnome.shell.gschema.override
/usr/share/glib-2.0/schemas/10_desktop-base.gschema.override
/usr/share/glib-2.0/schemas/10_gnome-shell.gschema.override
/usr/share/glib-2.0/schemas/10_gnome-terminal.gschema.override
/usr/share/glib-2.0/schemas/10_gnome-tweaks.gschema.override
/usr/share/glib-2.0/schemas/10_gsettings-desktop-schemas.gschema.override
/usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
/usr/share/glib-2.0/schemas/10_ubuntu-settings.gschema.override
```

執行

``` sh
dpkg -S /usr/share/glib-2.0/schemas/*.override | sort
```

顯示

```
desktop-base: /usr/share/glib-2.0/schemas/10_desktop-base.gschema.override
gnome-shell-common: /usr/share/glib-2.0/schemas/00_org.gnome.shell.gschema.override
gnome-shell-extension-ubuntu-dock: /usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
gnome-shell: /usr/share/glib-2.0/schemas/10_gnome-shell.gschema.override
gnome-terminal: /usr/share/glib-2.0/schemas/10_gnome-terminal.gschema.override
gsettings-desktop-schemas: /usr/share/glib-2.0/schemas/10_gsettings-desktop-schemas.gschema.override
ubuntu-settings: /usr/share/glib-2.0/schemas/10_ubuntu-settings.gschema.override
```


## 相關筆記

* [Elementary OS 探索筆記](https://samwhelp.github.io/note-about-elementary-os/read/adjustment/de/pantheon.html)
