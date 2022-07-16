
# plank




## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```


## Reference

* GSettings / [Relocatable schemas](https://docs.gtk.org/gio/class.Settings.html#relocatable-schemas-gsettings-relocatable)


## Explore


run

``` sh
gsettings list-recursively | grep net.launchpad.plank | sort
```

show

```
net.launchpad.plank.dock.settings alignment 'center'
net.launchpad.plank.dock.settings auto-pinning false
net.launchpad.plank.dock.settings current-workspace-only false
net.launchpad.plank.dock.settings dock-items ['desktop.dockitem', 'pcmanfm-qt.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem', 'sakura.dockitem']
net.launchpad.plank.dock.settings hide-delay 0
net.launchpad.plank.dock.settings hide-mode 'none'
net.launchpad.plank.dock.settings icon-size 36
net.launchpad.plank.dock.settings items-alignment 'center'
net.launchpad.plank.dock.settings lock-items false
net.launchpad.plank.dock.settings monitor ''
net.launchpad.plank.dock.settings offset 0
net.launchpad.plank.dock.settings pinned-only false
net.launchpad.plank.dock.settings position 'bottom'
net.launchpad.plank.dock.settings pressure-reveal false
net.launchpad.plank.dock.settings show-dock-item false
net.launchpad.plank.dock.settings theme 'Gtk+'
net.launchpad.plank.dock.settings tooltips-enabled true
net.launchpad.plank.dock.settings unhide-delay 0
net.launchpad.plank.dock.settings zoom-enabled true
net.launchpad.plank.dock.settings zoom-percent 150
net.launchpad.plank enabled-docks ['dock1']
```

run

``` sh
gsettings list-recursively net.launchpad.plank | sort
```

show

```
net.launchpad.plank.dock.settings alignment 'center'
net.launchpad.plank.dock.settings auto-pinning false
net.launchpad.plank.dock.settings current-workspace-only false
net.launchpad.plank.dock.settings dock-items ['desktop.dockitem', 'pcmanfm-qt.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem', 'sakura.dockitem']
net.launchpad.plank.dock.settings hide-delay 0
net.launchpad.plank.dock.settings hide-mode 'none'
net.launchpad.plank.dock.settings icon-size 36
net.launchpad.plank.dock.settings items-alignment 'center'
net.launchpad.plank.dock.settings lock-items false
net.launchpad.plank.dock.settings monitor ''
net.launchpad.plank.dock.settings offset 0
net.launchpad.plank.dock.settings pinned-only false
net.launchpad.plank.dock.settings position 'bottom'
net.launchpad.plank.dock.settings pressure-reveal false
net.launchpad.plank.dock.settings show-dock-item false
net.launchpad.plank.dock.settings theme 'Gtk+'
net.launchpad.plank.dock.settings tooltips-enabled true
net.launchpad.plank.dock.settings unhide-delay 0
net.launchpad.plank.dock.settings zoom-enabled true
net.launchpad.plank.dock.settings zoom-percent 150
net.launchpad.plank enabled-docks ['dock1']
```

run

``` sh
gsettings list-recursively net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ | sort
```

show

```
net.launchpad.plank.dock.settings alignment 'center'
net.launchpad.plank.dock.settings auto-pinning false
net.launchpad.plank.dock.settings current-workspace-only false
net.launchpad.plank.dock.settings dock-items ['desktop.dockitem', 'org.xfce.mousepad.dockitem', 'firefox.dockitem']
net.launchpad.plank.dock.settings hide-delay 0
net.launchpad.plank.dock.settings hide-mode 'none'
net.launchpad.plank.dock.settings icon-size 36
net.launchpad.plank.dock.settings items-alignment 'center'
net.launchpad.plank.dock.settings lock-items false
net.launchpad.plank.dock.settings monitor ''
net.launchpad.plank.dock.settings offset 0
net.launchpad.plank.dock.settings pinned-only false
net.launchpad.plank.dock.settings position 'bottom'
net.launchpad.plank.dock.settings pressure-reveal false
net.launchpad.plank.dock.settings show-dock-item false
net.launchpad.plank.dock.settings theme 'Gtk+'
net.launchpad.plank.dock.settings tooltips-enabled true
net.launchpad.plank.dock.settings unhide-delay 0
net.launchpad.plank.dock.settings zoom-enabled true
net.launchpad.plank.dock.settings zoom-percent 150
```



run

``` sh
dconf dump / | grep plank
```

show

```
[net/launchpad/plank]
[net/launchpad/plank/docks/dock1]
```

run

``` sh
dconf dump /net/launchpad/plank/docks/dock1/
```

show

```
[/]
alignment='center'
auto-pinning=true
current-workspace-only=false
dock-items=['gala-multitaskingview.dockitem', 'io.elementary.switchboard.dockitem', 'io.elementary.files.dockitem', 'io.elementary.terminal.dockitem', 'io.elementary.code.dockitem', 'firefox.dockitem', 'pcmanfm-qt.dockitem', 'sakura.dockitem', 'io.elementary.appcenter.dockitem']
hide-delay=500
hide-mode='auto'
icon-size=48
items-alignment='center'
lock-items=false
monitor=''
offset=0
pinned-only=false
position='bottom'
pressure-reveal=false
show-dock-item=false
theme='Gtk+'
tooltips-enabled=true
unhide-delay=250
zoom-enabled=false
zoom-percent=150
```

run

``` sh
dconf dump /net/launchpad/plank/
```

show

```
[/]
enabled-docks=['dock1']

[docks/dock1]
alignment='center'
auto-pinning=true
current-workspace-only=false
dock-items=['gala-multitaskingview.dockitem', 'io.elementary.switchboard.dockitem', 'io.elementary.files.dockitem', 'io.elementary.terminal.dockitem', 'io.elementary.code.dockitem', 'firefox.dockitem', 'pcmanfm-qt.dockitem', 'sakura.dockitem', 'io.elementary.appcenter.dockitem']
hide-delay=500
hide-mode='auto'
icon-size=48
items-alignment='center'
lock-items=false
monitor=''
offset=0
pinned-only=false
position='bottom'
pressure-reveal=false
show-dock-item=false
theme='Gtk+'
tooltips-enabled=true
unhide-delay=250
zoom-enabled=false
zoom-percent=150
```


run to clean /net/launchpad/plank/docks/dock1/

``` sh
dconf reset -f /net/launchpad/plank/docks/dock1/
```


## gschema

* /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.xml
* ~/.config/dconf/user


## Package



run

``` sh
dpkg -L libplank-common | sort
```

show

```
/.
/usr
/usr/share
/usr/share/doc
/usr/share/doc/libplank-common
/usr/share/doc/libplank-common/changelog.Debian.gz
/usr/share/doc/libplank-common/copyright
/usr/share/glib-2.0
/usr/share/glib-2.0/schemas
/usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.xml
/usr/share/locale
/usr/share/locale/am
/usr/share/locale/am/LC_MESSAGES
/usr/share/locale/am/LC_MESSAGES/plank.mo
/usr/share/locale/ar
/usr/share/locale/ar/LC_MESSAGES
/usr/share/locale/ar/LC_MESSAGES/plank.mo
/usr/share/locale/bg
/usr/share/locale/bg/LC_MESSAGES
/usr/share/locale/bg/LC_MESSAGES/plank.mo
/usr/share/locale/bs
/usr/share/locale/bs/LC_MESSAGES
/usr/share/locale/bs/LC_MESSAGES/plank.mo
/usr/share/locale/ca
/usr/share/locale/ca/LC_MESSAGES
/usr/share/locale/ca/LC_MESSAGES/plank.mo
/usr/share/locale/cs
/usr/share/locale/cs/LC_MESSAGES
/usr/share/locale/cs/LC_MESSAGES/plank.mo
/usr/share/locale/da
/usr/share/locale/da/LC_MESSAGES
/usr/share/locale/da/LC_MESSAGES/plank.mo
/usr/share/locale/de
/usr/share/locale/de/LC_MESSAGES
/usr/share/locale/de/LC_MESSAGES/plank.mo
/usr/share/locale/el
/usr/share/locale/el/LC_MESSAGES
/usr/share/locale/el/LC_MESSAGES/plank.mo
/usr/share/locale/en_AU
/usr/share/locale/en_AU/LC_MESSAGES
/usr/share/locale/en_AU/LC_MESSAGES/plank.mo
/usr/share/locale/en_CA
/usr/share/locale/en_CA/LC_MESSAGES
/usr/share/locale/en_CA/LC_MESSAGES/plank.mo
/usr/share/locale/en_GB
/usr/share/locale/en_GB/LC_MESSAGES
/usr/share/locale/en_GB/LC_MESSAGES/plank.mo
/usr/share/locale/eo
/usr/share/locale/eo/LC_MESSAGES
/usr/share/locale/eo/LC_MESSAGES/plank.mo
/usr/share/locale/es
/usr/share/locale/es/LC_MESSAGES
/usr/share/locale/es/LC_MESSAGES/plank.mo
/usr/share/locale/et
/usr/share/locale/et/LC_MESSAGES
/usr/share/locale/et/LC_MESSAGES/plank.mo
/usr/share/locale/eu
/usr/share/locale/eu/LC_MESSAGES
/usr/share/locale/eu/LC_MESSAGES/plank.mo
/usr/share/locale/fi
/usr/share/locale/fi/LC_MESSAGES
/usr/share/locale/fi/LC_MESSAGES/plank.mo
/usr/share/locale/fr
/usr/share/locale/fr/LC_MESSAGES
/usr/share/locale/fr/LC_MESSAGES/plank.mo
/usr/share/locale/ga
/usr/share/locale/ga/LC_MESSAGES
/usr/share/locale/ga/LC_MESSAGES/plank.mo
/usr/share/locale/gd
/usr/share/locale/gd/LC_MESSAGES
/usr/share/locale/gd/LC_MESSAGES/plank.mo
/usr/share/locale/gl
/usr/share/locale/gl/LC_MESSAGES
/usr/share/locale/gl/LC_MESSAGES/plank.mo
/usr/share/locale/he
/usr/share/locale/he/LC_MESSAGES
/usr/share/locale/he/LC_MESSAGES/plank.mo
/usr/share/locale/hr
/usr/share/locale/hr/LC_MESSAGES
/usr/share/locale/hr/LC_MESSAGES/plank.mo
/usr/share/locale/hu
/usr/share/locale/hu/LC_MESSAGES
/usr/share/locale/hu/LC_MESSAGES/plank.mo
/usr/share/locale/id
/usr/share/locale/id/LC_MESSAGES
/usr/share/locale/id/LC_MESSAGES/plank.mo
/usr/share/locale/it
/usr/share/locale/it/LC_MESSAGES
/usr/share/locale/it/LC_MESSAGES/plank.mo
/usr/share/locale/ja
/usr/share/locale/ja/LC_MESSAGES
/usr/share/locale/ja/LC_MESSAGES/plank.mo
/usr/share/locale/ka
/usr/share/locale/ka/LC_MESSAGES
/usr/share/locale/ka/LC_MESSAGES/plank.mo
/usr/share/locale/ko
/usr/share/locale/ko/LC_MESSAGES
/usr/share/locale/ko/LC_MESSAGES/plank.mo
/usr/share/locale/lt
/usr/share/locale/lt/LC_MESSAGES
/usr/share/locale/lt/LC_MESSAGES/plank.mo
/usr/share/locale/lv
/usr/share/locale/lv/LC_MESSAGES
/usr/share/locale/lv/LC_MESSAGES/plank.mo
/usr/share/locale/ml
/usr/share/locale/ml/LC_MESSAGES
/usr/share/locale/ml/LC_MESSAGES/plank.mo
/usr/share/locale/ms
/usr/share/locale/ms/LC_MESSAGES
/usr/share/locale/ms/LC_MESSAGES/plank.mo
/usr/share/locale/nb
/usr/share/locale/nb/LC_MESSAGES
/usr/share/locale/nb/LC_MESSAGES/plank.mo
/usr/share/locale/ne
/usr/share/locale/ne/LC_MESSAGES
/usr/share/locale/ne/LC_MESSAGES/plank.mo
/usr/share/locale/nl
/usr/share/locale/nl/LC_MESSAGES
/usr/share/locale/nl/LC_MESSAGES/plank.mo
/usr/share/locale/nn
/usr/share/locale/nn/LC_MESSAGES
/usr/share/locale/nn/LC_MESSAGES/plank.mo
/usr/share/locale/pl
/usr/share/locale/pl/LC_MESSAGES
/usr/share/locale/pl/LC_MESSAGES/plank.mo
/usr/share/locale/pt
/usr/share/locale/pt_BR
/usr/share/locale/pt_BR/LC_MESSAGES
/usr/share/locale/pt_BR/LC_MESSAGES/plank.mo
/usr/share/locale/pt/LC_MESSAGES
/usr/share/locale/pt/LC_MESSAGES/plank.mo
/usr/share/locale/ro
/usr/share/locale/ro/LC_MESSAGES
/usr/share/locale/ro/LC_MESSAGES/plank.mo
/usr/share/locale/ru
/usr/share/locale/ru/LC_MESSAGES
/usr/share/locale/ru/LC_MESSAGES/plank.mo
/usr/share/locale/sk
/usr/share/locale/sk/LC_MESSAGES
/usr/share/locale/sk/LC_MESSAGES/plank.mo
/usr/share/locale/sl
/usr/share/locale/sl/LC_MESSAGES
/usr/share/locale/sl/LC_MESSAGES/plank.mo
/usr/share/locale/sma
/usr/share/locale/sma/LC_MESSAGES
/usr/share/locale/sma/LC_MESSAGES/plank.mo
/usr/share/locale/sq
/usr/share/locale/sq/LC_MESSAGES
/usr/share/locale/sq/LC_MESSAGES/plank.mo
/usr/share/locale/sr
/usr/share/locale/sr@latin
/usr/share/locale/sr@latin/LC_MESSAGES
/usr/share/locale/sr@latin/LC_MESSAGES/plank.mo
/usr/share/locale/sr/LC_MESSAGES
/usr/share/locale/sr/LC_MESSAGES/plank.mo
/usr/share/locale/sv
/usr/share/locale/sv/LC_MESSAGES
/usr/share/locale/sv/LC_MESSAGES/plank.mo
/usr/share/locale/ta
/usr/share/locale/ta/LC_MESSAGES
/usr/share/locale/ta/LC_MESSAGES/plank.mo
/usr/share/locale/te
/usr/share/locale/te/LC_MESSAGES
/usr/share/locale/te/LC_MESSAGES/plank.mo
/usr/share/locale/th
/usr/share/locale/th/LC_MESSAGES
/usr/share/locale/th/LC_MESSAGES/plank.mo
/usr/share/locale/tr
/usr/share/locale/tr/LC_MESSAGES
/usr/share/locale/tr/LC_MESSAGES/plank.mo
/usr/share/locale/uk
/usr/share/locale/uk/LC_MESSAGES
/usr/share/locale/uk/LC_MESSAGES/plank.mo
/usr/share/locale/uz
/usr/share/locale/uz/LC_MESSAGES
/usr/share/locale/uz/LC_MESSAGES/plank.mo
/usr/share/locale/vi
/usr/share/locale/vi/LC_MESSAGES
/usr/share/locale/vi/LC_MESSAGES/plank.mo
/usr/share/locale/zh_CN
/usr/share/locale/zh_CN/LC_MESSAGES
/usr/share/locale/zh_CN/LC_MESSAGES/plank.mo
/usr/share/locale/zh_TW
/usr/share/locale/zh_TW/LC_MESSAGES
/usr/share/locale/zh_TW/LC_MESSAGES/plank.mo
/usr/share/plank
/usr/share/plank/themes
/usr/share/plank/themes/Default
/usr/share/plank/themes/Default/dock.theme
/usr/share/plank/themes/Matte
/usr/share/plank/themes/Matte/dock.theme
/usr/share/plank/themes/Transparent
/usr/share/plank/themes/Transparent/dock.theme
```
