---
title: xfsettingsd - xsettings 設定
nav_order: 5092
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# xfsettingsd - xsettings 設定

## 設定檔路徑

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/xfce/config/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml)


## Xfce Docs

* [xfce4-settings - Settings Daemon](https://docs.xfce.org/xfce/xfce4-settings/xfsettingsd)
* [xfconf - Configuration Storage System](https://docs.xfce.org/xfce/xfconf/start)
* [Xfconf-query](https://docs.xfce.org/xfce/xfconf/xfconf-query)


## Package

* [xfconf](https://packages.ubuntu.com/jammy/xfconf)
* [xfce4-settings](https://packages.ubuntu.com/jammy/xfce4-settings)


## Manpage

* $ man [xfconf-query](http://manpages.ubuntu.com/manpages/jammy/en/man1/xfconf-query.1.html)
* $ man []()

## 探索


### xfconf

執行

``` sh
dpkg -L xfconf | sort -u
```

顯示

```
/.
/usr
/usr/bin
/usr/bin/xfconf-query
/usr/lib
/usr/lib/x86_64-linux-gnu
/usr/lib/x86_64-linux-gnu/xfce4
/usr/lib/x86_64-linux-gnu/xfce4/xfconf
/usr/lib/x86_64-linux-gnu/xfce4/xfconf/xfconfd
/usr/share
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/xfconf-query
/usr/share/dbus-1
/usr/share/dbus-1/services
/usr/share/dbus-1/services/org.xfce.Xfconf.service
/usr/share/doc
/usr/share/doc/xfconf
/usr/share/doc/xfconf/changelog.Debian.gz
/usr/share/doc/xfconf/copyright
/usr/share/locale
/usr/share/locale/ar
/usr/share/locale/ar/LC_MESSAGES
/usr/share/locale/ar/LC_MESSAGES/xfconf.mo
/usr/share/locale/ast
/usr/share/locale/ast/LC_MESSAGES
/usr/share/locale/ast/LC_MESSAGES/xfconf.mo
/usr/share/locale/be
/usr/share/locale/be/LC_MESSAGES
/usr/share/locale/be/LC_MESSAGES/xfconf.mo
/usr/share/locale/bg
/usr/share/locale/bg/LC_MESSAGES
/usr/share/locale/bg/LC_MESSAGES/xfconf.mo
/usr/share/locale/bn
/usr/share/locale/bn/LC_MESSAGES
/usr/share/locale/bn/LC_MESSAGES/xfconf.mo
/usr/share/locale/ca
/usr/share/locale/ca/LC_MESSAGES
/usr/share/locale/ca/LC_MESSAGES/xfconf.mo
/usr/share/locale/cs
/usr/share/locale/cs/LC_MESSAGES
/usr/share/locale/cs/LC_MESSAGES/xfconf.mo
/usr/share/locale/da
/usr/share/locale/da/LC_MESSAGES
/usr/share/locale/da/LC_MESSAGES/xfconf.mo
/usr/share/locale/de
/usr/share/locale/de/LC_MESSAGES
/usr/share/locale/de/LC_MESSAGES/xfconf.mo
/usr/share/locale/el
/usr/share/locale/el/LC_MESSAGES
/usr/share/locale/el/LC_MESSAGES/xfconf.mo
/usr/share/locale/en_AU
/usr/share/locale/en_AU/LC_MESSAGES
/usr/share/locale/en_AU/LC_MESSAGES/xfconf.mo
/usr/share/locale/en_CA
/usr/share/locale/en_CA/LC_MESSAGES
/usr/share/locale/en_CA/LC_MESSAGES/xfconf.mo
/usr/share/locale/en_GB
/usr/share/locale/en_GB/LC_MESSAGES
/usr/share/locale/en_GB/LC_MESSAGES/xfconf.mo
/usr/share/locale/es
/usr/share/locale/es/LC_MESSAGES
/usr/share/locale/es/LC_MESSAGES/xfconf.mo
/usr/share/locale/eu
/usr/share/locale/eu/LC_MESSAGES
/usr/share/locale/eu/LC_MESSAGES/xfconf.mo
/usr/share/locale/fi
/usr/share/locale/fi/LC_MESSAGES
/usr/share/locale/fi/LC_MESSAGES/xfconf.mo
/usr/share/locale/fr
/usr/share/locale/fr/LC_MESSAGES
/usr/share/locale/fr/LC_MESSAGES/xfconf.mo
/usr/share/locale/gl
/usr/share/locale/gl/LC_MESSAGES
/usr/share/locale/gl/LC_MESSAGES/xfconf.mo
/usr/share/locale/he
/usr/share/locale/he/LC_MESSAGES
/usr/share/locale/he/LC_MESSAGES/xfconf.mo
/usr/share/locale/hr
/usr/share/locale/hr/LC_MESSAGES
/usr/share/locale/hr/LC_MESSAGES/xfconf.mo
/usr/share/locale/hu
/usr/share/locale/hu/LC_MESSAGES
/usr/share/locale/hu/LC_MESSAGES/xfconf.mo
/usr/share/locale/hy_AM
/usr/share/locale/hy_AM/LC_MESSAGES
/usr/share/locale/hy_AM/LC_MESSAGES/xfconf.mo
/usr/share/locale/hye
/usr/share/locale/hye/LC_MESSAGES
/usr/share/locale/hye/LC_MESSAGES/xfconf.mo
/usr/share/locale/id
/usr/share/locale/id/LC_MESSAGES
/usr/share/locale/id/LC_MESSAGES/xfconf.mo
/usr/share/locale/is
/usr/share/locale/is/LC_MESSAGES
/usr/share/locale/is/LC_MESSAGES/xfconf.mo
/usr/share/locale/it
/usr/share/locale/it/LC_MESSAGES
/usr/share/locale/it/LC_MESSAGES/xfconf.mo
/usr/share/locale/ja
/usr/share/locale/ja/LC_MESSAGES
/usr/share/locale/ja/LC_MESSAGES/xfconf.mo
/usr/share/locale/kk
/usr/share/locale/kk/LC_MESSAGES
/usr/share/locale/kk/LC_MESSAGES/xfconf.mo
/usr/share/locale/ko
/usr/share/locale/ko/LC_MESSAGES
/usr/share/locale/ko/LC_MESSAGES/xfconf.mo
/usr/share/locale/lt
/usr/share/locale/lt/LC_MESSAGES
/usr/share/locale/lt/LC_MESSAGES/xfconf.mo
/usr/share/locale/lv
/usr/share/locale/lv/LC_MESSAGES
/usr/share/locale/lv/LC_MESSAGES/xfconf.mo
/usr/share/locale/ms
/usr/share/locale/ms/LC_MESSAGES
/usr/share/locale/ms/LC_MESSAGES/xfconf.mo
/usr/share/locale/nb
/usr/share/locale/nb/LC_MESSAGES
/usr/share/locale/nb/LC_MESSAGES/xfconf.mo
/usr/share/locale/nl
/usr/share/locale/nl/LC_MESSAGES
/usr/share/locale/nl/LC_MESSAGES/xfconf.mo
/usr/share/locale/nn
/usr/share/locale/nn/LC_MESSAGES
/usr/share/locale/nn/LC_MESSAGES/xfconf.mo
/usr/share/locale/oc
/usr/share/locale/oc/LC_MESSAGES
/usr/share/locale/oc/LC_MESSAGES/xfconf.mo
/usr/share/locale/pa
/usr/share/locale/pa/LC_MESSAGES
/usr/share/locale/pa/LC_MESSAGES/xfconf.mo
/usr/share/locale/pl
/usr/share/locale/pl/LC_MESSAGES
/usr/share/locale/pl/LC_MESSAGES/xfconf.mo
/usr/share/locale/pt
/usr/share/locale/pt/LC_MESSAGES
/usr/share/locale/pt/LC_MESSAGES/xfconf.mo
/usr/share/locale/pt_BR
/usr/share/locale/pt_BR/LC_MESSAGES
/usr/share/locale/pt_BR/LC_MESSAGES/xfconf.mo
/usr/share/locale/ro
/usr/share/locale/ro/LC_MESSAGES
/usr/share/locale/ro/LC_MESSAGES/xfconf.mo
/usr/share/locale/ru
/usr/share/locale/ru/LC_MESSAGES
/usr/share/locale/ru/LC_MESSAGES/xfconf.mo
/usr/share/locale/si
/usr/share/locale/si/LC_MESSAGES
/usr/share/locale/si/LC_MESSAGES/xfconf.mo
/usr/share/locale/sk
/usr/share/locale/sk/LC_MESSAGES
/usr/share/locale/sk/LC_MESSAGES/xfconf.mo
/usr/share/locale/sl
/usr/share/locale/sl/LC_MESSAGES
/usr/share/locale/sl/LC_MESSAGES/xfconf.mo
/usr/share/locale/sq
/usr/share/locale/sq/LC_MESSAGES
/usr/share/locale/sq/LC_MESSAGES/xfconf.mo
/usr/share/locale/sr
/usr/share/locale/sr/LC_MESSAGES
/usr/share/locale/sr/LC_MESSAGES/xfconf.mo
/usr/share/locale/sv
/usr/share/locale/sv/LC_MESSAGES
/usr/share/locale/sv/LC_MESSAGES/xfconf.mo
/usr/share/locale/te
/usr/share/locale/te/LC_MESSAGES
/usr/share/locale/te/LC_MESSAGES/xfconf.mo
/usr/share/locale/th
/usr/share/locale/th/LC_MESSAGES
/usr/share/locale/th/LC_MESSAGES/xfconf.mo
/usr/share/locale/tr
/usr/share/locale/tr/LC_MESSAGES
/usr/share/locale/tr/LC_MESSAGES/xfconf.mo
/usr/share/locale/ug
/usr/share/locale/ug/LC_MESSAGES
/usr/share/locale/ug/LC_MESSAGES/xfconf.mo
/usr/share/locale/uk
/usr/share/locale/uk/LC_MESSAGES
/usr/share/locale/uk/LC_MESSAGES/xfconf.mo
/usr/share/locale/ur
/usr/share/locale/ur/LC_MESSAGES
/usr/share/locale/ur/LC_MESSAGES/xfconf.mo
/usr/share/locale/ur_PK
/usr/share/locale/ur_PK/LC_MESSAGES
/usr/share/locale/ur_PK/LC_MESSAGES/xfconf.mo
/usr/share/locale/zh_CN
/usr/share/locale/zh_CN/LC_MESSAGES
/usr/share/locale/zh_CN/LC_MESSAGES/xfconf.mo
/usr/share/locale/zh_HK
/usr/share/locale/zh_HK/LC_MESSAGES
/usr/share/locale/zh_HK/LC_MESSAGES/xfconf.mo
/usr/share/locale/zh_TW
/usr/share/locale/zh_TW/LC_MESSAGES
/usr/share/locale/zh_TW/LC_MESSAGES/xfconf.mo
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/xfconf-query.1.gz
```

### xfce4-settings

執行

``` sh
dpkg -L xfce4-settings | sort -u
```

顯示

```
/.
/etc
/etc/xdg
/etc/xdg/autostart
/etc/xdg/autostart/xfsettingsd.desktop
/etc/xdg/menus
/etc/xdg/menus/xfce-settings-manager.menu
/etc/xdg/xfce4
/etc/xdg/xfce4/xfconf
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml
/etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
/usr
/usr/bin
/usr/bin/xfce4-accessibility-settings
/usr/bin/xfce4-appearance-settings
/usr/bin/xfce4-color-settings
/usr/bin/xfce4-display-settings
/usr/bin/xfce4-find-cursor
/usr/bin/xfce4-keyboard-settings
/usr/bin/xfce4-mime-helper
/usr/bin/xfce4-mime-settings
/usr/bin/xfce4-mouse-settings
/usr/bin/xfce4-settings-editor
/usr/bin/xfce4-settings-manager
/usr/bin/xfsettingsd
/usr/share
/usr/share/applications
/usr/share/applications/xfce-display-settings.desktop
/usr/share/applications/xfce-keyboard-settings.desktop
/usr/share/applications/xfce-mouse-settings.desktop
/usr/share/applications/xfce-settings-manager.desktop
/usr/share/applications/xfce-ui-settings.desktop
/usr/share/applications/xfce4-accessibility-settings.desktop
/usr/share/applications/xfce4-color-settings.desktop
/usr/share/applications/xfce4-file-manager.desktop
/usr/share/applications/xfce4-mail-reader.desktop
/usr/share/applications/xfce4-mime-settings.desktop
/usr/share/applications/xfce4-settings-editor.desktop
/usr/share/applications/xfce4-terminal-emulator.desktop
/usr/share/applications/xfce4-web-browser.desktop
/usr/share/doc
/usr/share/doc/xfce4-settings
/usr/share/doc/xfce4-settings/changelog.Debian.gz
/usr/share/doc/xfce4-settings/copyright
/usr/share/icons
/usr/share/icons/hicolor
/usr/share/icons/hicolor/128x128
/usr/share/icons/hicolor/128x128/apps
/usr/share/icons/hicolor/128x128/apps/org.xfce.filemanager.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.mailreader.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.accessibility.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.appearance.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.color.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.default-applications.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.display.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.editor.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.keyboard.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.manager.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.settings.mouse.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.terminalemulator.png
/usr/share/icons/hicolor/128x128/apps/org.xfce.webbrowser.png
/usr/share/icons/hicolor/128x128/devices
/usr/share/icons/hicolor/128x128/devices/xfce-display-extend.png
/usr/share/icons/hicolor/128x128/devices/xfce-display-external.png
/usr/share/icons/hicolor/128x128/devices/xfce-display-internal.png
/usr/share/icons/hicolor/128x128/devices/xfce-display-mirror.png
/usr/share/icons/hicolor/128x128/devices/xfce-display-profile.png
/usr/share/icons/hicolor/16x16
/usr/share/icons/hicolor/16x16/apps
/usr/share/icons/hicolor/16x16/apps/org.xfce.filemanager.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.mailreader.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.accessibility.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.appearance.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.color.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.default-applications.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.display.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.editor.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.keyboard.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.manager.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.settings.mouse.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.terminalemulator.png
/usr/share/icons/hicolor/16x16/apps/org.xfce.webbrowser.png
/usr/share/icons/hicolor/24x24
/usr/share/icons/hicolor/24x24/apps
/usr/share/icons/hicolor/24x24/apps/org.xfce.filemanager.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.mailreader.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.accessibility.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.appearance.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.color.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.default-applications.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.display.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.editor.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.keyboard.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.manager.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.settings.mouse.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.terminalemulator.png
/usr/share/icons/hicolor/24x24/apps/org.xfce.webbrowser.png
/usr/share/icons/hicolor/32x32
/usr/share/icons/hicolor/32x32/apps
/usr/share/icons/hicolor/32x32/apps/org.xfce.filemanager.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.mailreader.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.accessibility.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.appearance.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.color.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.default-applications.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.display.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.editor.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.keyboard.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.manager.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.settings.mouse.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.terminalemulator.png
/usr/share/icons/hicolor/32x32/apps/org.xfce.webbrowser.png
/usr/share/icons/hicolor/48x48
/usr/share/icons/hicolor/48x48/apps
/usr/share/icons/hicolor/48x48/apps/org.xfce.filemanager.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.mailreader.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.accessibility.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.appearance.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.color.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.default-applications.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.display.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.editor.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.keyboard.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.manager.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.settings.mouse.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.terminalemulator.png
/usr/share/icons/hicolor/48x48/apps/org.xfce.webbrowser.png
/usr/share/icons/hicolor/scalable
/usr/share/icons/hicolor/scalable/apps
/usr/share/icons/hicolor/scalable/apps/org.xfce.filemanager.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.mailreader.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.accessibility.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.appearance.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.color.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.default-applications.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.display.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.editor.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.keyboard.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.manager.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.settings.mouse.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.terminalemulator.svg
/usr/share/icons/hicolor/scalable/apps/org.xfce.webbrowser.svg
/usr/share/locale
/usr/share/locale/am
/usr/share/locale/am/LC_MESSAGES
/usr/share/locale/am/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ar
/usr/share/locale/ar/LC_MESSAGES
/usr/share/locale/ar/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ast
/usr/share/locale/ast/LC_MESSAGES
/usr/share/locale/ast/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/be
/usr/share/locale/be/LC_MESSAGES
/usr/share/locale/be/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/be@tarask
/usr/share/locale/be@tarask/LC_MESSAGES
/usr/share/locale/be@tarask/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/bg
/usr/share/locale/bg/LC_MESSAGES
/usr/share/locale/bg/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/bn
/usr/share/locale/bn/LC_MESSAGES
/usr/share/locale/bn/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ca
/usr/share/locale/ca/LC_MESSAGES
/usr/share/locale/ca/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/cs
/usr/share/locale/cs/LC_MESSAGES
/usr/share/locale/cs/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/da
/usr/share/locale/da/LC_MESSAGES
/usr/share/locale/da/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/de
/usr/share/locale/de/LC_MESSAGES
/usr/share/locale/de/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/el
/usr/share/locale/el/LC_MESSAGES
/usr/share/locale/el/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/en_AU
/usr/share/locale/en_AU/LC_MESSAGES
/usr/share/locale/en_AU/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/en_CA
/usr/share/locale/en_CA/LC_MESSAGES
/usr/share/locale/en_CA/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/en_GB
/usr/share/locale/en_GB/LC_MESSAGES
/usr/share/locale/en_GB/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/es
/usr/share/locale/es/LC_MESSAGES
/usr/share/locale/es/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/et
/usr/share/locale/et/LC_MESSAGES
/usr/share/locale/et/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/eu
/usr/share/locale/eu/LC_MESSAGES
/usr/share/locale/eu/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/fi
/usr/share/locale/fi/LC_MESSAGES
/usr/share/locale/fi/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/fr
/usr/share/locale/fr/LC_MESSAGES
/usr/share/locale/fr/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/gl
/usr/share/locale/gl/LC_MESSAGES
/usr/share/locale/gl/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/he
/usr/share/locale/he/LC_MESSAGES
/usr/share/locale/he/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/hr
/usr/share/locale/hr/LC_MESSAGES
/usr/share/locale/hr/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/hu
/usr/share/locale/hu/LC_MESSAGES
/usr/share/locale/hu/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/hy_AM
/usr/share/locale/hy_AM/LC_MESSAGES
/usr/share/locale/hy_AM/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/hye
/usr/share/locale/hye/LC_MESSAGES
/usr/share/locale/hye/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/id
/usr/share/locale/id/LC_MESSAGES
/usr/share/locale/id/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ie
/usr/share/locale/ie/LC_MESSAGES
/usr/share/locale/ie/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/is
/usr/share/locale/is/LC_MESSAGES
/usr/share/locale/is/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/it
/usr/share/locale/it/LC_MESSAGES
/usr/share/locale/it/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ja
/usr/share/locale/ja/LC_MESSAGES
/usr/share/locale/ja/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/kab
/usr/share/locale/kab/LC_MESSAGES
/usr/share/locale/kab/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/kk
/usr/share/locale/kk/LC_MESSAGES
/usr/share/locale/kk/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ko
/usr/share/locale/ko/LC_MESSAGES
/usr/share/locale/ko/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/lt
/usr/share/locale/lt/LC_MESSAGES
/usr/share/locale/lt/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/lv
/usr/share/locale/lv/LC_MESSAGES
/usr/share/locale/lv/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ms
/usr/share/locale/ms/LC_MESSAGES
/usr/share/locale/ms/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/nb
/usr/share/locale/nb/LC_MESSAGES
/usr/share/locale/nb/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/nl
/usr/share/locale/nl/LC_MESSAGES
/usr/share/locale/nl/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/nn
/usr/share/locale/nn/LC_MESSAGES
/usr/share/locale/nn/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/oc
/usr/share/locale/oc/LC_MESSAGES
/usr/share/locale/oc/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/pa
/usr/share/locale/pa/LC_MESSAGES
/usr/share/locale/pa/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/pl
/usr/share/locale/pl/LC_MESSAGES
/usr/share/locale/pl/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/pt
/usr/share/locale/pt/LC_MESSAGES
/usr/share/locale/pt/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/pt_BR
/usr/share/locale/pt_BR/LC_MESSAGES
/usr/share/locale/pt_BR/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ro
/usr/share/locale/ro/LC_MESSAGES
/usr/share/locale/ro/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ru
/usr/share/locale/ru/LC_MESSAGES
/usr/share/locale/ru/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/si
/usr/share/locale/si/LC_MESSAGES
/usr/share/locale/si/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/sk
/usr/share/locale/sk/LC_MESSAGES
/usr/share/locale/sk/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/sl
/usr/share/locale/sl/LC_MESSAGES
/usr/share/locale/sl/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/sq
/usr/share/locale/sq/LC_MESSAGES
/usr/share/locale/sq/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/sr
/usr/share/locale/sr/LC_MESSAGES
/usr/share/locale/sr/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/sv
/usr/share/locale/sv/LC_MESSAGES
/usr/share/locale/sv/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/te
/usr/share/locale/te/LC_MESSAGES
/usr/share/locale/te/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/th
/usr/share/locale/th/LC_MESSAGES
/usr/share/locale/th/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/tr
/usr/share/locale/tr/LC_MESSAGES
/usr/share/locale/tr/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ug
/usr/share/locale/ug/LC_MESSAGES
/usr/share/locale/ug/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/uk
/usr/share/locale/uk/LC_MESSAGES
/usr/share/locale/uk/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ur
/usr/share/locale/ur/LC_MESSAGES
/usr/share/locale/ur/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/ur_PK
/usr/share/locale/ur_PK/LC_MESSAGES
/usr/share/locale/ur_PK/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/zh_CN
/usr/share/locale/zh_CN/LC_MESSAGES
/usr/share/locale/zh_CN/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/zh_HK
/usr/share/locale/zh_HK/LC_MESSAGES
/usr/share/locale/zh_HK/LC_MESSAGES/xfce4-settings.mo
/usr/share/locale/zh_TW
/usr/share/locale/zh_TW/LC_MESSAGES
/usr/share/locale/zh_TW/LC_MESSAGES/xfce4-settings.mo
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/xfce4-accessibility-settings.1.gz
/usr/share/man/man1/xfce4-appearance-settings.1.gz
/usr/share/man/man1/xfce4-display-settings.1.gz
/usr/share/man/man1/xfce4-keyboard-settings.1.gz
/usr/share/man/man1/xfce4-mime-settings.1.gz
/usr/share/man/man1/xfce4-mouse-settings.1.gz
/usr/share/man/man1/xfce4-settings-editor.1.gz
/usr/share/man/man1/xfce4-settings-manager.1.gz
/usr/share/man/man1/xfsettingsd.1.gz
/usr/share/xfce4
/usr/share/xfce4/settings
/usr/share/xfce4/settings/appearance-install-theme
```

執行

``` sh
cat /etc/xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml
```

顯示

``` xml
<!--
  Default values for the X settings registry as described in
  http://www.freedesktop.org/wiki/Specifications/XSettingsRegistry
-->

<?xml version="1.0" encoding="UTF-8"?>
<channel name="xsettings" version="1.0">
  <property name="Net" type="empty">
    <property name="ThemeName" type="string" value="Greybird"/>
    <property name="IconThemeName" type="string" value="elementary-xfce-dark"/>
    <property name="DoubleClickTime" type="int" value="400"/>
    <property name="DoubleClickDistance" type="int" value="5"/>
    <property name="DndDragThreshold" type="int" value="8"/>
    <property name="CursorBlink" type="bool" value="true"/>
    <property name="CursorBlinkTime" type="int" value="1200"/>
    <property name="SoundThemeName" type="string" value="default"/>
    <property name="EnableEventSounds" type="bool" value="false"/>
    <property name="EnableInputFeedbackSounds" type="bool" value="false"/>
  </property>
  <property name="Xft" type="empty">
    <property name="DPI" type="empty"/>
    <property name="Antialias" type="int" value="-1"/>
    <property name="Hinting" type="int" value="-1"/>
    <property name="HintStyle" type="string" value="hintnone"/>
    <property name="RGBA" type="string" value="none"/>
    <!-- <property name="Lcdfilter" type="string" value="none"/> -->
  </property>
  <property name="Gtk" type="empty">
    <property name="CanChangeAccels" type="bool" value="false"/>
    <property name="ColorPalette" type="string" value="black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90"/>
    <property name="FontName" type="string" value="Sans 10"/>
    <property name="MonospaceFontName" type="string" value="Monospace 10"/>
    <property name="IconSizes" type="string" value=""/>
    <property name="KeyThemeName" type="string" value=""/>
    <property name="ToolbarStyle" type="string" value="icons"/>
    <property name="ToolbarIconSize" type="int" value="3"/>
    <!-- <property name="IMPreeditStyle" type="string" value=""/> -->
    <!-- <property name="IMStatusStyle" type="string" value=""/> -->
    <!-- <property name="IMModule" type="string" value=""/> -->
    <property name="MenuImages" type="bool" value="true"/>
    <property name="ButtonImages" type="bool" value="true"/>
    <property name="MenuBarAccel" type="string" value="F10"/>
    <property name="CursorThemeName" type="string" value=""/>
    <property name="CursorThemeSize" type="int" value="0"/>
    <property name="DecorationLayout" type="string" value="menu:minimize,maximize,close"/>
    <property name="DialogsUseHeader" type="bool" value="true"/>
    <property name="TitlebarMiddleClick" type="string" value="lower"/>
  </property>
  <property name="Gdk" type="empty">
    <property name="WindowScalingFactor" type="int" value="1"/>
  </property>
</channel>
```
