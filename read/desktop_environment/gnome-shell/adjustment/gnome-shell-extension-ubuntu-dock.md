---
title: gnome-shell-extension-ubuntu-dock
nav_order: 3040
has_children: false
parent: gnome-shell
grand_parent: 桌面環境
---


# gnome-shell-extension-ubuntu-dock

> 這個基本上就是「[org.gnome.shell.extensions.dash-to-dock](https://extensions.gnome.org/extension/307/dash-to-dock/) ([GitHub](https://github.com/micheleg/dash-to-dock/))」。


## 微調腳本

* [微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-extension-ubuntu-dock)

## 應用程式圖示項目

> 若要使用指令來設定有那些「應用程式圖示項目」，請參考「[favorite-apps](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/gnome-shell/adjustment/favorite-apps.html)」的設定。

## 圖形使用者介面程式

可以透過「圖形使用者介面程式」，來設定「Dock」的屬性。

也就是「Settings / Appearance / Dock」。

``` sh
gnome-control-center ubuntu
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
