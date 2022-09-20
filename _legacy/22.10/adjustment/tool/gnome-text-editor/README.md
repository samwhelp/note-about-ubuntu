
# gnome-text-editor




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
gnome-shell --version
```

show

```
GNOME Shell 42.4
```


run

``` sh
gsettings list-recursively | grep org.gnome.TextEditor | sort
```

show

```
org.gnome.TextEditor auto-indent true
org.gnome.TextEditor auto-save-delay uint32 3
org.gnome.TextEditor custom-font 'Monospace 11'
org.gnome.TextEditor discover-settings true
org.gnome.TextEditor draw-spaces @as []
org.gnome.TextEditor enable-snippets false
org.gnome.TextEditor highlight-current-line false
org.gnome.TextEditor indent-style 'tab'
org.gnome.TextEditor indent-width -1
org.gnome.TextEditor keybindings 'default'
org.gnome.TextEditor last-save-directory ''
org.gnome.TextEditor line-height 1.2
org.gnome.TextEditor recolor-window true
org.gnome.TextEditor restore-session true
org.gnome.TextEditor right-margin-position uint32 80
org.gnome.TextEditor show-grid false
org.gnome.TextEditor show-line-numbers false
org.gnome.TextEditor show-map false
org.gnome.TextEditor show-right-margin false
org.gnome.TextEditor spellcheck true
org.gnome.TextEditor style-scheme 'Adwaita'
org.gnome.TextEditor style-variant 'follow'
org.gnome.TextEditor tab-width uint32 8
org.gnome.TextEditor use-system-font true
org.gnome.TextEditor wrap-text true
```


run

``` sh
grep org.gnome.TextEditor /usr/share/glib-2.0/schemas/*.xml
```


run

``` sh
dpkg -L gnome-text-editor | grep '/schemas/'
```

show

```
/usr/share/glib-2.0/schemas/org.gnome.TextEditor.gschema.xml
```

## gschema

* /usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override
* ~/.config/dconf/user

``` sh
dconf dump / | grep 'org/gnome/TextEditor' -A 14
```

## Package

run

``` sh
apt-cache show gnome-text-editor | grep gtk
```

or run

```
apt-cache show gnome-text-editor | grep '^Depends:'
```

show

```
Depends: libadwaita-1-0 (>= 1.0.1), libc6 (>= 2.34), libcairo2 (>= 1.15.12), libenchant-2-2 (>= 2.2.3), libglib2.0-0 (>= 2.70.0), libgtk-4-1 (>= 4.6), libgtksourceview-5-0 (>= 5.4.1), libicu70 (>= 70.1-1~), libpango-1.0-0 (>= 1.14.0), libpcre3, dconf-gsettings-backend | gsettings-backend
```

run

``` sh
ls /usr/share/gtksourceview-5/styles/ -1
```

show

```
Adwaita-dark.xml
Adwaita.xml
classic-dark.xml
classic.xml
cobalt-light.xml
cobalt.xml
kate-dark.xml
kate.xml
oblivion.xml
solarized-dark.xml
solarized-light.xml
styles.rng
tango.xml
```
