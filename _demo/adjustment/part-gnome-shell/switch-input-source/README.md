
# switch-input-source




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

## Explore

run

``` sh
gsettings list-recursively | grep input-source | sort
```

show

```
org.gnome.desktop.input-sources current uint32 0
org.gnome.desktop.input-sources mru-sources @a(ss) []
org.gnome.desktop.input-sources per-window false
org.gnome.desktop.input-sources show-all-sources false
org.gnome.desktop.input-sources sources [('xkb', 'us')]
org.gnome.desktop.input-sources xkb-options @as []
org.gnome.desktop.wm.keybindings switch-input-source-backward ['<Shift><Super>space', '<Shift>XF86Keyboard']
org.gnome.desktop.wm.keybindings switch-input-source ['<Super>space', 'XF86Keyboard']
```


run

``` sh
gsettings list-recursively | grep org.gnome.desktop.input-sources | sort
```

show

```
org.gnome.desktop.input-sources current uint32 0
org.gnome.desktop.input-sources mru-sources @a(ss) []
org.gnome.desktop.input-sources per-window false
org.gnome.desktop.input-sources show-all-sources false
org.gnome.desktop.input-sources sources [('xkb', 'us')]
org.gnome.desktop.input-sources xkb-options @as []
```

run

``` sh
gsettings list-recursively | grep 'org.gnome.desktop.wm.keybindings' | grep 'input-source'
```

show

```
nput-source'
org.gnome.desktop.wm.keybindings switch-input-source ['<Super>space', 'XF86Keyboard']
org.gnome.desktop.wm.keybindings switch-input-source-backward ['<Shift><Super>space', '<Shift>XF86Keyboard']
```

run

``` sh
grep input-source /usr/share/glib-2.0/schemas/*.xml
```

show

```
/usr/share/glib-2.0/schemas/com.github.libpinyin.ibus-libpinyin.gschema.xml:    <key name="cloud-input-source" type="i">
/usr/share/glib-2.0/schemas/com.github.libpinyin.ibus-libpinyin.gschema.xml:    <key name="cloud-input-source" type="i">
/usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml:  <schema id="org.gnome.desktop.input-sources"
/usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml:          path="/org/gnome/desktop/input-sources/">
/usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml:    <key name="switch-input-source" type="as">
/usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml:    <key name="switch-input-source-backward" type="as">
```

## gschema

* /usr/share/glib-2.0/schemas/20_switch-input-source.gschema.override
* /usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml
* /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
* ~/.config/dconf/user


## Package

run

``` sh
dpkg -S /usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml
```

show

```
gsettings-desktop-schemas: /usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml
```

run

``` sh
dpkg -S /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
```

show

```
gsettings-desktop-schemas: /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
```


run

``` sh
dpkg -L gsettings-desktop-schemas | grep '/schemas/' | sort
```

show

```
/usr/share/glib-2.0/schemas/10_gsettings-desktop-schemas.gschema.override
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.applications.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.interface.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.keyboard.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.magnifier.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.mouse.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.app-folders.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.background.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.calendar.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.datetime.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.default-applications.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.enums.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.lockdown.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.media-handling.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.notifications.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.peripherals.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.privacy.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.screensaver.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.search-providers.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.session.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.sound.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.thumbnail-cache.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.thumbnailers.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.wm.preferences.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.system.locale.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.system.location.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.system.proxy.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.applications.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.interface.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.keyboard.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.magnifier.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.a11y.mouse.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.app-folders.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.background.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.calendar.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.datetime.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.default-applications.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.enums.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.lockdown.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.media-handling.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.notifications.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.peripherals.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.privacy.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.screensaver.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.search-providers.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.session.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.sound.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.thumbnail-cache.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.thumbnailers.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.desktop.wm.preferences.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.system.locale.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.system.location.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.system.proxy.gschema.xml
```

run

``` sh
cat /usr/share/glib-2.0/schemas/10_gsettings-desktop-schemas.gschema.override
```

show

```
[org.gnome.desktop.default-applications.terminal]
exec='x-terminal-emulator'
exec-arg='-e'

# Adobe Source Code Pro is not in Debian yet
# See https://bugs.debian.org/736681 and https://bugs.debian.org/762252
[org.gnome.desktop.interface]
monospace-font-name = 'Monospace 11'

[org.gnome.desktop.wm.keybindings]
panel-main-menu = ['<Alt>F1']
```
