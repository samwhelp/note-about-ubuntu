---
title: qt5ct 微調
nav_order: 5081
has_children: false
parent: 系統環境微調
grand_parent: 微調
---

# qt5ct 微調



## 前提

因為我慣用「pcmanfm-qt」，所以做了這個設定後，

我設定「gtk」的「佈景主題」，只要該「佈景主題」有提供「gtk2」的外觀設定，

跟「qt」相關的程式外觀，就會依據「gtk2」的外觀設定來顯示。


## 微調腳本

* [qt5ct](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/part/qt5ct)


## 設定檔路徑

* [~/.config/qt5ct/qt5ct.conf](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/part/qt5ct/config/qt5ct/qt5ct.conf)


## Package

* [qt5ct](https://packages.ubuntu.com/jammy/qt5ct)
* [qt5-style-plugins](https://packages.ubuntu.com/jammy/qt5-style-plugins)
* [qt5-gtk2-platformtheme](https://packages.ubuntu.com/jammy/qt5-gtk2-platformtheme)

> 我是採用「[style=gtk2](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/part/qt5ct/config/qt5ct/qt5ct.conf#L5)」，所以需要安裝「[qt5-style-plugins](https://packages.ubuntu.com/jammy/qt5-style-plugins)」，就會安裝「[qt5-gtk2-platformtheme](https://packages.ubuntu.com/jammy/qt5-gtk2-platformtheme)」。


## Manpage

* man [qt5ct](http://manpages.ubuntu.com/manpages/jammy/en/man1/qt5ct.1.html)


## 圖形介面工具

* [qt5ct](http://manpages.ubuntu.com/manpages/jammy/en/man1/qt5ct.1.html) (Qt5 Settings) (Qt5 Configuration Tool) (/usr/share/applications/qt5ct.desktop)


## 探索

執行

``` sh
dpkg -L qt5ct
```

顯示

```
/.
/etc
/etc/X11
/etc/X11/Xsession.d
/etc/X11/Xsession.d/99qt5ct
/usr
/usr/bin
/usr/bin/qt5ct
/usr/lib
/usr/lib/x86_64-linux-gnu
/usr/lib/x86_64-linux-gnu/qt5
/usr/lib/x86_64-linux-gnu/qt5/plugins
/usr/lib/x86_64-linux-gnu/qt5/plugins/platformthemes
/usr/lib/x86_64-linux-gnu/qt5/plugins/platformthemes/libqt5ct.so
/usr/lib/x86_64-linux-gnu/qt5/plugins/styles
/usr/lib/x86_64-linux-gnu/qt5/plugins/styles/libqt5ct-style.so
/usr/share
/usr/share/applications
/usr/share/applications/qt5ct.desktop
/usr/share/doc
/usr/share/doc/qt5ct
/usr/share/doc/qt5ct/README.Debian
/usr/share/doc/qt5ct/changelog.Debian.gz
/usr/share/doc/qt5ct/copyright
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/qt5ct.1.gz
/usr/share/qt5ct
/usr/share/qt5ct/colors
/usr/share/qt5ct/colors/airy.conf
/usr/share/qt5ct/colors/darker.conf
/usr/share/qt5ct/colors/dusk.conf
/usr/share/qt5ct/colors/ia_ora.conf
/usr/share/qt5ct/colors/sand.conf
/usr/share/qt5ct/colors/simple.conf
/usr/share/qt5ct/colors/waves.conf
/usr/share/qt5ct/qss
/usr/share/qt5ct/qss/fusion-fixes.qss
/usr/share/qt5ct/qss/scrollbar-simple.qss
/usr/share/qt5ct/qss/sliders-simple.qss
/usr/share/qt5ct/qss/tooltip-simple.qss
/usr/share/qt5ct/qss/traynotification-simple.qss
```

執行

``` sh
cat /etc/X11/Xsession.d/99qt5ct
```

顯示

``` sh
# Enable qt5ct by default unless another PLATFORMTHEME option is set
# or KDE is running.
if [ -z "$QT_QPA_PLATFORMTHEME" ] && [ "$XDG_CURRENT_DESKTOP" != "KDE" ]
then
        export QT_QPA_PLATFORMTHEME=qt5ct
fi
```

執行

``` sh
dpkg -L qt5-gtk2-platformtheme
```

顯示

```
/.
/usr
/usr/lib
/usr/lib/x86_64-linux-gnu
/usr/lib/x86_64-linux-gnu/qt5
/usr/lib/x86_64-linux-gnu/qt5/plugins
/usr/lib/x86_64-linux-gnu/qt5/plugins/platformthemes
/usr/lib/x86_64-linux-gnu/qt5/plugins/platformthemes/libqgtk2.so
/usr/lib/x86_64-linux-gnu/qt5/plugins/styles
/usr/lib/x86_64-linux-gnu/qt5/plugins/styles/libqgtk2style.so
/usr/share
/usr/share/doc
/usr/share/doc/qt5-gtk2-platformtheme
/usr/share/doc/qt5-gtk2-platformtheme/changelog.Debian.gz
/usr/share/doc/qt5-gtk2-platformtheme/copyrigh
```


## Link

* Marjaro Wiki / [Set all Qt app's to use GTK+ font & theme settings](https://wiki.manjaro.org/index.php/Set_all_Qt_app%27s_to_use_GTK%2B_font_%26_theme_settings)
* [https://wiki.archlinux.org/index.php/Qt](https://wiki.archlinux.org/index.php/Qt)
* [https://samwhelp.github.io/note-about-ubuntu/read/adjustment/env/editor.html](https://samwhelp.github.io/note-about-ubuntu/read/adjustment/env/editor.html)
* [https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/qt5ct.html](https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/qt5ct.html)
