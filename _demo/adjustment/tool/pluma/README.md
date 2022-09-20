
# pluma




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
mate-about --version
```

show

```
MATE Desktop Environment 1.26.0
```

run

``` sh
pluma --version
```

show

```
pluma - Version 1.26.0
```



run

``` sh
gsettings list-recursively | grep org.mate.pluma | sort
```

show

```
org.mate.pluma active-plugins ['filebrowser', 'spell', 'modelines', 'docinfo', 'time']
org.mate.pluma auto-detected-encodings ['UTF-8', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']
org.mate.pluma auto-indent true
org.mate.pluma auto-save false
org.mate.pluma auto-save-interval uint32 10
org.mate.pluma background-pattern 'none'
org.mate.pluma bottom-panel-active-page 0
org.mate.pluma bottom-panel-size 140
org.mate.pluma bottom-panel-visible false
org.mate.pluma bracket-matching true
org.mate.pluma color-scheme 'Yaru'
org.mate.pluma create-backup-copy false
org.mate.pluma ctrl-tab-switch-tabs false
org.mate.pluma display-line-numbers true
org.mate.pluma display-overview-map false
org.mate.pluma display-right-margin true
org.mate.pluma editor-font 'Ubuntu Mono 13'
org.mate.pluma enable-space-drawer-nbsp 'show-none'
org.mate.pluma enable-space-drawer-newline false
org.mate.pluma enable-space-drawer-space 'show-none'
org.mate.pluma enable-space-drawer-tab 'show-none'
org.mate.pluma filter-id 0
org.mate.pluma highlight-current-line true
org.mate.pluma history-replace-with @as []
org.mate.pluma history-search-for @as []
org.mate.pluma insert-spaces true
org.mate.pluma max-recents uint32 5
org.mate.pluma max-undo-actions uint32 2000
org.mate.pluma.plugins.filebrowser filter-mode 'hidden_and_binary'
org.mate.pluma.plugins.filebrowser filter-pattern ''
org.mate.pluma.plugins.filebrowser.on-load enable-remote false
org.mate.pluma.plugins.filebrowser.on-load root ''
org.mate.pluma.plugins.filebrowser.on-load tree-view true
org.mate.pluma.plugins.filebrowser.on-load virtual-root ''
org.mate.pluma.plugins.filebrowser open-at-first-doc true
org.mate.pluma.plugins.pythonconsole command-color '#314e6c'
org.mate.pluma.plugins.pythonconsole error-color '#990000'
org.mate.pluma.plugins.pythonconsole font 'Monospace 10'
org.mate.pluma.plugins.pythonconsole use-system-font true
org.mate.pluma.plugins.spell autocheck-type 'document'
org.mate.pluma.plugins.time custom-format '%d/%m/%Y %H:%M:%S'
org.mate.pluma.plugins.time prompt-type 'prompt-selected-format'
org.mate.pluma.plugins.time selected-format '%c'
org.mate.pluma print-font-body-pango 'Ubuntu Mono 9'
org.mate.pluma print-font-header-pango 'Ubuntu 11'
org.mate.pluma print-font-numbers-pango 'Ubuntu 8'
org.mate.pluma print-header true
org.mate.pluma print-line-numbers uint32 0
org.mate.pluma print-syntax-highlighting true
org.mate.pluma print-wrap-mode 'GTK_WRAP_WORD'
org.mate.pluma restore-cursor-position true
org.mate.pluma right-margin-position uint32 80
org.mate.pluma search-highlighting true
org.mate.pluma shown-in-menu-encodings ['ISO-8859-15']
org.mate.pluma show-save-confirmation true
org.mate.pluma show-single-tab true
org.mate.pluma show-tabs-with-side-pane true
org.mate.pluma side-panel-active-page 827629879
org.mate.pluma side-panel-size 200
org.mate.pluma side-pane-visible false
org.mate.pluma size (650, 500)
org.mate.pluma smart-home-end 'after'
org.mate.pluma state 128
org.mate.pluma statusbar-visible true
org.mate.pluma syntax-highlighting true
org.mate.pluma tabs-size uint32 4
org.mate.pluma toolbar-buttons-style 'PLUMA_TOOLBAR_SYSTEM'
org.mate.pluma toolbar-visible true
org.mate.pluma use-default-font true
org.mate.pluma wrap-mode 'GTK_WRAP_WORD'
org.mate.pluma writable-vfs-schemes ['dav', 'davs', 'ftp', 'sftp', 'smb', 'ssh']
```


run

``` sh
gsettings list-recursively | grep 'org.mate.pluma.plugins' | sort
```

show

```
org.mate.pluma.plugins.filebrowser filter-mode 'hidden_and_binary'
org.mate.pluma.plugins.filebrowser filter-pattern ''
org.mate.pluma.plugins.filebrowser.on-load enable-remote false
org.mate.pluma.plugins.filebrowser.on-load root ''
org.mate.pluma.plugins.filebrowser.on-load tree-view true
org.mate.pluma.plugins.filebrowser.on-load virtual-root ''
org.mate.pluma.plugins.filebrowser open-at-first-doc true
org.mate.pluma.plugins.pythonconsole command-color '#314e6c'
org.mate.pluma.plugins.pythonconsole error-color '#990000'
org.mate.pluma.plugins.pythonconsole font 'Monospace 10'
org.mate.pluma.plugins.pythonconsole use-system-font true
org.mate.pluma.plugins.spell autocheck-type 'document'
org.mate.pluma.plugins.time custom-format '%d/%m/%Y %H:%M:%S'
org.mate.pluma.plugins.time prompt-type 'prompt-selected-format'
org.mate.pluma.plugins.time selected-format '%c'
```


run

``` sh
gsettings list-recursively | grep 'org.mate.pluma active-plugins' | sort
```

show

```
org.mate.pluma active-plugins ['filebrowser', 'spell', 'modelines', 'docinfo', 'time']
```


run

``` sh
grep org.mate.pluma /usr/share/glib-2.0/schemas/*.xml
```


run

``` sh
dpkg -L pluma-common | grep '/schemas/'
```

show

```
/usr/share/glib-2.0/schemas/org.mate.pluma.gschema.xml
/usr/share/glib-2.0/schemas/org.mate.pluma.plugins.filebrowser.gschema.xml
/usr/share/glib-2.0/schemas/org.mate.pluma.plugins.pythonconsole.gschema.xml
/usr/share/glib-2.0/schemas/org.mate.pluma.plugins.spell.gschema.xml
/usr/share/glib-2.0/schemas/org.mate.pluma.plugins.time.gschema.xml
```

## gschema

* /usr/share/glib-2.0/schemas/50_pluma.gschema.override
* ~/.config/dconf/user


## Package

run

``` sh
apt-cache show pluma | grep gtk
```

or run

```
apt-cache show pluma | grep '^Depends:'
```

show

```
Depends: gir1.2-peas-1.0, gir1.2-pluma-1.0 (= 1.26.0-1ubuntu1), iso-codes, mate-desktop-common, pluma-common (= 1.26.0-1ubuntu1), libatk1.0-0 (>= 1.12.4), libc6 (>= 2.34), libcairo2 (>= 1.2.4), libenchant-2-2 (>= 2.2.3), libgdk-pixbuf-2.0-0 (>= 2.22.0), libgirepository-1.0-1 (>= 0.9.3), libglib2.0-0 (>= 2.37.3), libgtk-3-0 (>= 3.21.6), libgtksourceview-4-0 (>= 3.23.90), libice6 (>= 1:1.0.0), libpango-1.0-0 (>= 1.42.0), libpeas-1.0-0 (>= 1.1.0), libsm6, libx11-6, libxml2 (>= 2.7.4)
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
