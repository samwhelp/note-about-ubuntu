---
title: favorite-apps
nav_order: 3031
has_children: false
parent: gnome-shell
grand_parent: 桌面環境
---


# favorite-apps

## 微調腳本

* [微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-extension-ubuntu-dock)


## 探索

``` sh
gsettings list-recursively | grep favorite-apps
```

顯示

```
org.gnome.shell favorite-apps ['ubuntu-desktop-installer_ubuntu-desktop-installer.desktop', 'ubiquity.desktop', 'firefox_firefox.desktop', 'thunderbird.desktop', 'org.gnome.Nautilus.desktop', 'rhythmbox.desktop', 'libreoffice-writer.desktop', 'snap-store_ubuntu-software.desktop', 'yelp.desktop']
```

## 設定範例

可以在「dock」操作，

也可以執行下面指令，

``` sh
gsettings set org.gnome.shell favorite-apps "['org.gnome.Nautilus.desktop', 'org.gnome.gedit.desktop', 'firefox_firefox.desktop', 'org.gnome.Terminal.desktop', 'gnome-control-center.desktop']"
```

> 路徑

```
/usr/share/applications/org.gnome.Nautilus.desktop
/usr/share/applications/org.gnome.gedit.desktop
/usr/share/applications/firefox_firefox.desktop
/usr/share/applications/org.gnome.Terminal.desktop
/usr/share/applications/gnome-control-center.desktop
```

## 按鍵綁定

| 按鍵組合   | 功能                              |
| --------- | -------------------------------- |
| `Win + 1` | 開啟或聚焦 `nautilus`             |
| `Win + 2` | 開啟或聚焦 `gedit`                |
| `Win + 3` | 開啟或聚焦 `firefox`              |
| `Win + 4` | 開啟或聚焦 `gnome-terminal`       |
| `Win + 5` | 開啟或聚焦 `gnome-control-center` |


## org.gnome.shell.keybindings

在「gnome.shell」有綁定「快速鍵」

執行

``` sh
gsettings list-recursively | grep switch-to-application
```

顯示

```
org.gnome.shell.keybindings switch-to-application-1 ['<Super>1']
org.gnome.shell.keybindings switch-to-application-2 ['<Super>2']
org.gnome.shell.keybindings switch-to-application-3 ['<Super>3']
org.gnome.shell.keybindings switch-to-application-4 ['<Super>4']
org.gnome.shell.keybindings switch-to-application-5 ['<Super>5']
org.gnome.shell.keybindings switch-to-application-6 ['<Super>6']
org.gnome.shell.keybindings switch-to-application-7 ['<Super>7']
org.gnome.shell.keybindings switch-to-application-8 ['<Super>8']
org.gnome.shell.keybindings switch-to-application-9 ['<Super>9']
```

## dash-to-dock

在「dash-to-dock」也有綁定「快速鍵」

執行

``` sh
gsettings list-recursively | grep dock | grep key | sort
```

顯示

```
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-10 ['<Ctrl><Super>0']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-1 ['<Ctrl><Super>1']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-2 ['<Ctrl><Super>2']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-3 ['<Ctrl><Super>3']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-4 ['<Ctrl><Super>4']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-5 ['<Ctrl><Super>5']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-6 ['<Ctrl><Super>6']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-7 ['<Ctrl><Super>7']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-8 ['<Ctrl><Super>8']
org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-9 ['<Ctrl><Super>9']
org.gnome.shell.extensions.dash-to-dock app-hotkey-10 ['<Super>0']
org.gnome.shell.extensions.dash-to-dock app-hotkey-1 ['<Super>1']
org.gnome.shell.extensions.dash-to-dock app-hotkey-2 ['<Super>2']
org.gnome.shell.extensions.dash-to-dock app-hotkey-3 ['<Super>3']
org.gnome.shell.extensions.dash-to-dock app-hotkey-4 ['<Super>4']
org.gnome.shell.extensions.dash-to-dock app-hotkey-5 ['<Super>5']
org.gnome.shell.extensions.dash-to-dock app-hotkey-6 ['<Super>6']
org.gnome.shell.extensions.dash-to-dock app-hotkey-7 ['<Super>7']
org.gnome.shell.extensions.dash-to-dock app-hotkey-8 ['<Super>8']
org.gnome.shell.extensions.dash-to-dock app-hotkey-9 ['<Super>9']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-10 ['<Shift><Super>0']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-1 ['<Shift><Super>1']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-2 ['<Shift><Super>2']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-3 ['<Shift><Super>3']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-4 ['<Shift><Super>4']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-5 ['<Shift><Super>5']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-6 ['<Shift><Super>6']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-7 ['<Shift><Super>7']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-8 ['<Shift><Super>8']
org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-9 ['<Shift><Super>9']
org.gnome.shell.extensions.dash-to-dock hotkeys-overlay true
org.gnome.shell.extensions.dash-to-dock hotkeys-show-dock true
org.gnome.shell.extensions.dash-to-dock hot-keys true
```
