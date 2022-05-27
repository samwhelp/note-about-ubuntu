---
title: gnome-flashback
nav_order: 4001
has_children: false
parent: 桌面環境微調
grand_parent: 微調
---


# gnome-flashback

## Subject

* [如何安裝](#如何安裝)
* [gnome-panel layout](#gnome-panel-layout)
* [探索](#探索)


## Package

* [gnome-flashback](https://packages.ubuntu.com/jammy/gnome-flashback)
* [gnome-flashback-common](https://packages.ubuntu.com/jammy/gnome-flashback-common)
* [gnome-session-flashback](https://packages.ubuntu.com/jammy/gnome-session-flashback)
* [gnome-panel](https://packages.ubuntu.com/jammy/gnome-panel)
* [metacity](https://packages.ubuntu.com/jammy/metacity)
* [compiz](https://packages.ubuntu.com/jammy/compiz)
* [compizconfig-settings-manager](https://packages.ubuntu.com/jammy/compizconfig-settings-manager)
* [gnome-tweaks](https://packages.ubuntu.com/jammy/gnome-tweaks)

## Source Package

* [gnome-flashback](https://packages.ubuntu.com/source/jammy/gnome-flashback)


## 如何安裝

執行下面指令，安裝「[gnome-session-flashback](https://packages.ubuntu.com/jammy/gnome-session-flashback)」。

``` sh
sudo apt-get install gnome-session-flashback
```

也會連同安裝「[gnome-panel](https://packages.ubuntu.com/jammy/gnome-panel)」和「[metacity](https://packages.ubuntu.com/jammy/metacity)」。

關於「WM」，

除了可以搭配採用「[metacity](https://packages.ubuntu.com/jammy/metacity)」，

也可以改搭配採用「[compiz](https://packages.ubuntu.com/jammy/compiz)」

執行下面指令，安裝「[compiz](https://packages.ubuntu.com/jammy/compiz)」

``` sh
sudo apt-get install compiz
```

執行下面指令，安裝「[compizconfig-settings-manager](https://packages.ubuntu.com/jammy/compizconfig-settings-manager)」

``` sh
sudo apt-get install compizconfig-settings-manager
```

關於「compizconfig-settings-manager」這個「圖形介面設定工具」，可以用來設定「compiz」。


另外「gnome-flashback」除了原本的「[gnome-control-center](https://packages.ubuntu.com/jammy/gnome-control-center)」這個「圖形介面設定工具」，

也可以安裝「[gnome-tweaks](https://packages.ubuntu.com/jammy/gnome-tweaks)」這個「圖形介面設定工具」。

而我比較慣用的是採用指令的方式來設定，

主要是透過「[gsettings](http://manpages.ubuntu.com/manpages/jammy/en/man1/gsettings.1.html)」搭配「[dconf](http://manpages.ubuntu.com/manpages/jammy/en/man1/dconf.1.html)」來設定。

相關範例，可以參考「[Ubuntu 微調](https://samwhelp.github.io/note-about-ubuntu/read/flavours/ubuntu/)」。


## gnome-panel layout

* [範例](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/prototype/gnome-panel/layout-switch)


執行

``` sh
ls -1 /usr/share/gnome-panel/layouts
```

顯示

```
default.layout
gnome-flashback.layout
ubuntu.layout
```

從「/usr/share/gnome-panel/layouts」這個資料夾，

可以找出有那些「layout」可以採用。


執行下面指令，清空相關設定。

``` sh
dconf reset -f /org/gnome/gnome-panel/
```

執行下面指令，設定採用「layout」。

``` sh
gsettings set org.gnome.gnome-panel.general default-layout "ubuntu"
```

重新啟動「gnome-panel」，就會採用新的「layout」。

``` sh
gnome-panel --replace &
```


執行下面指令，可以看到相關的設定

``` sh
gsettings list-recursively | grep org.gnome.gnome-panel
```

或是執行

``` sh
dconf dump /org/gnome/gnome-panel/
```


## 探索

## gnome-session-flashback

執行

``` sh
dpkg -L gnome-session-flashback | sort
```

顯示

```
/.
/etc
/etc/compizconfig
/etc/compizconfig/gnome-flashback.conf
/etc/compizconfig/gnome-flashback.ini
/etc/xdg
/etc/xdg/autostart
/etc/xdg/autostart/gnome-flashback-clipboard.desktop
/etc/xdg/autostart/gnome-flashback-media-keys.desktop
/etc/xdg/autostart/gnome-flashback-nm-applet.desktop
/usr
/usr/lib
/usr/libexec
/usr/libexec/gnome-flashback-compiz
/usr/libexec/gnome-flashback-metacity
/usr/lib/systemd
/usr/lib/systemd/user
/usr/lib/systemd/user/gnome-session@gnome-flashback-compiz.target.d
/usr/lib/systemd/user/gnome-session@gnome-flashback-compiz.target.d/session.conf
/usr/lib/systemd/user/gnome-session@gnome-flashback-metacity.target.d
/usr/lib/systemd/user/gnome-session@gnome-flashback-metacity.target.d/session.conf
/usr/share
/usr/share/doc
/usr/share/doc/gnome-session-flashback
/usr/share/doc/gnome-session-flashback/changelog.Debian.gz
/usr/share/doc/gnome-session-flashback/copyright
/usr/share/glib-2.0
/usr/share/glib-2.0/schemas
/usr/share/glib-2.0/schemas/00_gnome-flashback.gschema.override
/usr/share/glib-2.0/schemas/10_gnome-session-flashback.gschema.override
/usr/share/gnome-panel
/usr/share/gnome-panel/layouts
/usr/share/gnome-panel/layouts/gnome-flashback.layout
/usr/share/gnome-session
/usr/share/gnome-session/sessions
/usr/share/gnome-session/sessions/gnome-flashback-compiz.session
/usr/share/gnome-session/sessions/gnome-flashback-metacity.session
/usr/share/xsessions
/usr/share/xsessions/gnome-flashback-compiz.desktop
/usr/share/xsessions/gnome-flashback-metacity.desktop
```

## Xsession

執行

``` sh
dpkg -L gnome-session-flashback | grep 'xsessions/'
```

顯示

```
/usr/share/xsessions/gnome-flashback-compiz.desktop
/usr/share/xsessions/gnome-flashback-metacity.desktop
```

## gnome-session

執行

``` sh
dpkg -L gnome-session-flashback | grep 'gnome-session/sessions/'
```

顯示

```
/usr/share/gnome-session/sessions/gnome-flashback-compiz.session
/usr/share/gnome-session/sessions/gnome-flashback-metacity.session
```

## libexec

執行

``` sh
dpkg -L gnome-session-flashback | grep 'libexec/'
```

顯示

```
/usr/libexec/gnome-flashback-compiz
/usr/libexec/gnome-flashback-metacity
```

## Xsession / metacity

執行

``` sh
cat /usr/share/xsessions/gnome-flashback-metacity.desktop
```

顯示

``` ini
[Desktop Entry]
Name=GNOME Flashback (Metacity)
Comment=This session logs you into GNOME Flashback with Metacity
Exec=/usr/libexec/gnome-flashback-metacity
TryExec=metacity
Type=Application
DesktopNames=GNOME-Flashback;GNOME;
X-Ubuntu-Gettext-Domain=gnome-flashback
```

執行

``` sh
cat /usr/libexec/gnome-flashback-metacity
```

顯示

``` sh
#!/bin/sh

if [ -z $XDG_CURRENT_DESKTOP ]; then
  export XDG_CURRENT_DESKTOP="GNOME-Flashback:GNOME"
fi

exec gnome-session --systemd --session=gnome-flashback-metacity --disable-acceleration-check "$@"
```

上面關於「--session=gnome-flashback-metacity」，

指的是「/usr/share/gnome-session/sessions/gnome-flashback-metacity.session」。

執行

``` sh
cat /usr/share/gnome-session/sessions/gnome-flashback-metacity.session
```

顯示

``` ini
[GNOME Session]
Name=GNOME Flashback (Metacity)
RequiredComponents=metacity;gnome-flashback;gnome-panel;org.gnome.SettingsDaemon.A11ySettings;org.gnome.SettingsDaemon.Color;org.gnome.SettingsDaemon.Datetime;org.gnome.SettingsDaemon.Housekeeping;org.gnome.SettingsDaemon.Keyboard;org.gnome.SettingsDaemon.MediaKeys;org.gnome.SettingsDaemon.Power;org.gnome.SettingsDaemon.PrintNotifications;org.gnome.SettingsDaemon.Rfkill;org.gnome.SettingsDaemon.ScreensaverProxy;org.gnome.SettingsDaemon.Sharing;org.gnome.SettingsDaemon.Smartcard;org.gnome.SettingsDaemon.Sound;org.gnome.SettingsDaemon.UsbProtection;org.gnome.SettingsDaemon.Wacom;org.gnome.SettingsDaemon.XSettings;
```

關於「RequiredComponents=」後面那一串，

可以在「/usr/share/applications/」這個資料夾找到相對應的檔案，副檔名是「.desktop」。

也就是登入後，會自動執行的。

執行

``` sh
grep '^RequiredComponents=' /usr/share/gnome-session/sessions/gnome-flashback-metacity.session | awk -F '=' '{print $2}' | sed 's/;$//'  | sed 's/;/\n/g' | awk '{print "/usr/share/applications/"$1".desktop"}'
```

或是執行

``` sh
grep '^RequiredComponents=' /usr/share/gnome-session/sessions/gnome-flashback-metacity.session | awk -F '=' '{print $2}' | sed -e 's/;$//' -e 's/;/\n/g' | awk '{print "/usr/share/applications/"$1".desktop"}'
```

顯示

```
/usr/share/applications/metacity.desktop
/usr/share/applications/gnome-flashback.desktop
/usr/share/applications/gnome-panel.desktop
/usr/share/applications/org.gnome.SettingsDaemon.A11ySettings.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Color.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Datetime.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Housekeeping.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Keyboard.desktop
/usr/share/applications/org.gnome.SettingsDaemon.MediaKeys.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Power.desktop
/usr/share/applications/org.gnome.SettingsDaemon.PrintNotifications.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Rfkill.desktop
/usr/share/applications/org.gnome.SettingsDaemon.ScreensaverProxy.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Sharing.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Smartcard.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Sound.desktop
/usr/share/applications/org.gnome.SettingsDaemon.UsbProtection.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Wacom.desktop
/usr/share/applications/org.gnome.SettingsDaemon.XSettings.desktop
```


## Xsession / compiz

執行

``` sh
cat /usr/share/xsessions/gnome-flashback-compiz.desktop
```

顯示

``` ini
[Desktop Entry]
Name=GNOME Flashback (Compiz)
Comment=This session logs you into GNOME Flashback with Compiz
Exec=/usr/libexec/gnome-flashback-compiz
TryExec=compiz
Type=Application
DesktopNames=GNOME-Flashback;GNOME;
X-Ubuntu-Gettext-Domain=gnome-flashback
```

執行

``` sh
cat /usr/libexec/gnome-flashback-compiz
```

顯示

``` sh
#!/bin/sh

if [ -z $XDG_CURRENT_DESKTOP ]; then
  export XDG_CURRENT_DESKTOP="GNOME-Flashback:GNOME"
fi

exec gnome-session --systemd --session=gnome-flashback-compiz "$@"
```

上面關於「--session=gnome-flashback-compiz」，

指的是「/usr/share/gnome-session/sessions/gnome-flashback-compiz.session」。

執行

``` sh
cat /usr/share/gnome-session/sessions/gnome-flashback-compiz.session
```

顯示

``` ini
[GNOME Session]
Name=GNOME Flashback (Compiz)
RequiredComponents=compiz;gnome-flashback;gnome-panel;org.gnome.SettingsDaemon.A11ySettings;org.gnome.SettingsDaemon.Color;org.gnome.SettingsDaemon.Datetime;org.gnome.SettingsDaemon.Housekeeping;org.gnome.SettingsDaemon.Keyboard;org.gnome.SettingsDaemon.MediaKeys;org.gnome.SettingsDaemon.Power;org.gnome.SettingsDaemon.PrintNotifications;org.gnome.SettingsDaemon.Rfkill;org.gnome.SettingsDaemon.ScreensaverProxy;org.gnome.SettingsDaemon.Sharing;org.gnome.SettingsDaemon.Smartcard;org.gnome.SettingsDaemon.Sound;org.gnome.SettingsDaemon.UsbProtection;org.gnome.SettingsDaemon.Wacom;org.gnome.SettingsDaemon.XSettings;
```

關於「RequiredComponents=」後面那一串，

可以在「/usr/share/applications/」這個資料夾找到相對應的檔案，副檔名是「.desktop」。

也就是登入後，會自動執行的。


執行

``` sh
grep '^RequiredComponents=' /usr/share/gnome-session/sessions/gnome-flashback-compiz.session | awk -F '=' '{print $2}' | sed 's/;$//'  | sed 's/;/\n/g' | awk '{print "/usr/share/applications/"$1".desktop"}'
```

或是執行

``` sh
grep '^RequiredComponents=' /usr/share/gnome-session/sessions/gnome-flashback-compiz.session | awk -F '=' '{print $2}' | sed -e 's/;$//' -e 's/;/\n/g' | awk '{print "/usr/share/applications/"$1".desktop"}'
```

顯示

```
/usr/share/applications/compiz.desktop
/usr/share/applications/gnome-flashback.desktop
/usr/share/applications/gnome-panel.desktop
/usr/share/applications/org.gnome.SettingsDaemon.A11ySettings.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Color.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Datetime.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Housekeeping.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Keyboard.desktop
/usr/share/applications/org.gnome.SettingsDaemon.MediaKeys.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Power.desktop
/usr/share/applications/org.gnome.SettingsDaemon.PrintNotifications.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Rfkill.desktop
/usr/share/applications/org.gnome.SettingsDaemon.ScreensaverProxy.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Sharing.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Smartcard.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Sound.desktop
/usr/share/applications/org.gnome.SettingsDaemon.UsbProtection.desktop
/usr/share/applications/org.gnome.SettingsDaemon.Wacom.desktop
/usr/share/applications/org.gnome.SettingsDaemon.XSettings.desktop
```
