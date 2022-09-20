
# gedit




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
GNOME Shell 42.0
```


run

``` sh
gsettings list-recursively | grep org.gnome.gedit | sort
```

show

```
org.gnome.gedit.plugins.externaltools font 'Monospace 10'
org.gnome.gedit.plugins.externaltools use-system-font true
org.gnome.gedit.plugins.filebrowser binary-patterns ['*.la', '*.lo']
org.gnome.gedit.plugins.filebrowser enable-remote false
org.gnome.gedit.plugins.filebrowser filter-mode ['hide-hidden', 'hide-binary']
org.gnome.gedit.plugins.filebrowser filter-pattern ''
org.gnome.gedit.plugins.filebrowser.nautilus click-policy 'double'
org.gnome.gedit.plugins.filebrowser.nautilus confirm-trash true
org.gnome.gedit.plugins.filebrowser open-at-first-doc true
org.gnome.gedit.plugins.filebrowser root 'file:///'
org.gnome.gedit.plugins.filebrowser tree-view true
org.gnome.gedit.plugins.filebrowser virtual-root 'file:///home/sam/Documents'
org.gnome.gedit.plugins.pythonconsole command-color '#314e6c'
org.gnome.gedit.plugins.pythonconsole error-color '#990000'
org.gnome.gedit.plugins.pythonconsole font 'Monospace 10'
org.gnome.gedit.plugins.pythonconsole use-system-font true
org.gnome.gedit.plugins.spell highlight-misspelled false
org.gnome.gedit.plugins.time custom-format '%d/%m/%Y %H:%M:%S'
org.gnome.gedit.plugins.time prompt-type 'prompt-selected-format'
org.gnome.gedit.plugins.time selected-format '%c'
org.gnome.gedit.preferences.editor auto-indent true
org.gnome.gedit.preferences.editor auto-save false
org.gnome.gedit.preferences.editor auto-save-interval uint32 10
org.gnome.gedit.preferences.editor background-pattern 'none'
org.gnome.gedit.preferences.editor bracket-matching true
org.gnome.gedit.preferences.editor create-backup-copy false
org.gnome.gedit.preferences.editor display-line-numbers true
org.gnome.gedit.preferences.editor display-overview-map false
org.gnome.gedit.preferences.editor display-right-margin false
org.gnome.gedit.preferences.editor editor-font 'Monospace 12'
org.gnome.gedit.preferences.editor ensure-trailing-newline true
org.gnome.gedit.preferences.editor highlight-current-line true
org.gnome.gedit.preferences.editor insert-spaces false
org.gnome.gedit.preferences.editor max-undo-actions 2000
org.gnome.gedit.preferences.editor restore-cursor-position true
org.gnome.gedit.preferences.editor right-margin-position uint32 80
org.gnome.gedit.preferences.editor scheme 'Yaru-dark'
org.gnome.gedit.preferences.editor search-highlighting true
org.gnome.gedit.preferences.editor smart-home-end 'after'
org.gnome.gedit.preferences.editor syntax-highlighting true
org.gnome.gedit.preferences.editor tabs-size uint32 8
org.gnome.gedit.preferences.editor use-default-font true
org.gnome.gedit.preferences.editor wrap-last-split-mode 'word'
org.gnome.gedit.preferences.editor wrap-mode 'word'
org.gnome.gedit.preferences.encodings candidate-encodings ['']
org.gnome.gedit.preferences.print margin-bottom 25.0
org.gnome.gedit.preferences.print margin-left 25.0
org.gnome.gedit.preferences.print margin-right 25.0
org.gnome.gedit.preferences.print margin-top 15.0
org.gnome.gedit.preferences.print print-font-body-pango 'Monospace 9'
org.gnome.gedit.preferences.print print-font-header-pango 'Sans 11'
org.gnome.gedit.preferences.print print-font-numbers-pango 'Sans 8'
org.gnome.gedit.preferences.print print-header true
org.gnome.gedit.preferences.print print-line-numbers uint32 0
org.gnome.gedit.preferences.print print-syntax-highlighting true
org.gnome.gedit.preferences.print print-wrap-mode 'word'
org.gnome.gedit.preferences.ui bottom-panel-visible false
org.gnome.gedit.preferences.ui show-tabs-mode 'auto'
org.gnome.gedit.preferences.ui side-panel-visible false
org.gnome.gedit.preferences.ui statusbar-visible true
org.gnome.gedit.state.file-chooser filter-id 0
org.gnome.gedit.state.file-chooser open-recent true
org.gnome.gedit.state.history-entry replace-with-entry ['']
org.gnome.gedit.state.history-entry search-for-entry ['']
org.gnome.gedit.state.window bottom-panel-active-page ''
org.gnome.gedit.state.window bottom-panel-size 140
org.gnome.gedit.state.window side-panel-active-page 'GeditWindowDocumentsPanel'
org.gnome.gedit.state.window side-panel-size 200
org.gnome.gedit.state.window size (1292, 694)
org.gnome.gedit.state.window state 87168
```


run

``` sh
gsettings list-recursively | grep 'org.gnome.gedit.plugins active-plugins'
```

show

```
org.gnome.gedit.plugins active-plugins ['filebrowser', 'modelines', 'sort', 'openlinks', 'docinfo', 'spell']
```


run

``` sh
grep org.gnome.gedit /usr/share/glib-2.0/schemas/*.xml
```


run

``` sh
dpkg -L gedit-common | grep '/schemas/'
```

show

```
/usr/share/glib-2.0/schemas/org.gnome.gedit.enums.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.externaltools.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.filebrowser.enums.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.filebrowser.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.pythonconsole.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.spell.gschema.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.time.enums.xml
/usr/share/glib-2.0/schemas/org.gnome.gedit.plugins.time.gschema.xml
```

## gschema

* /usr/share/glib-2.0/schemas/50_gedit.gschema.override
* ~/.config/dconf/user


## Package

run

``` sh
apt-cache show gedit | grep gtk
```

or run

```
apt-cache show gedit | grep '^Depends:'
```

show

```
Depends: gedit-common (<< 42), gedit-common (>= 41), gir1.2-glib-2.0, gir1.2-gtk-3.0 (>= 3.22), gir1.2-gtksource-4, gir1.2-pango-1.0, gir1.2-peas-1.0, gsettings-desktop-schemas, iso-codes, python3-gi (>= 3.0), python3-gi-cairo (>= 3.0), python3:any, python3.10, libatk1.0-0 (>= 1.12.4), libc6 (>= 2.34), libcairo2 (>= 1.2.4), libgdk-pixbuf-2.0-0 (>= 2.22.0), libgirepository-1.0-1 (>= 0.9.3), libglib2.0-0 (>= 2.64), libgspell-1-2 (>= 1.8.2), libgtk-3-0 (>= 3.22), libgtksourceview-4-0 (>= 3.18.0), libpango-1.0-0 (>= 1.42.0), libpeas-1.0-0 (>= 1.14.1), libxml2 (>= 2.7.4)
```

run

``` sh
ls /usr/share/gtksourceview-4/styles/ -1
```

show

```
classic.xml
cobalt.xml
kate.xml
oblivion.xml
solarized-dark.xml
solarized-light.xml
styles.rng
tango.xml
Yaru-dark.xml
Yaru.xml
```
