
# gnome-terminal




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
GNOME Shell 43.beta
```

run

``` sh
gnome-terminal --version
```

show

```
# GNOME Terminal 3.45.90 using VTE 0.70.0 +BIDI +GNUTLS +ICU +SYSTEMD
```


run

``` sh
gsettings list-recursively | grep org.gnome.Terminal | sort
```

show

```
org.gnome.Terminal.Legacy.Keybindings close-tab '<Control><Shift>w'
org.gnome.Terminal.Legacy.Keybindings close-window '<Control><Shift>q'
org.gnome.Terminal.Legacy.Keybindings copy '<Control><Shift>c'
org.gnome.Terminal.Legacy.Keybindings copy-html 'disabled'
org.gnome.Terminal.Legacy.Keybindings detach-tab 'disabled'
org.gnome.Terminal.Legacy.Keybindings export 'disabled'
org.gnome.Terminal.Legacy.Keybindings find-clear '<Control><Shift>J'
org.gnome.Terminal.Legacy.Keybindings find '<Control><Shift>F'
org.gnome.Terminal.Legacy.Keybindings find-next '<Control><Shift>G'
org.gnome.Terminal.Legacy.Keybindings find-previous '<Control><Shift>H'
org.gnome.Terminal.Legacy.Keybindings full-screen 'F11'
org.gnome.Terminal.Legacy.Keybindings header-menu 'disabled'
org.gnome.Terminal.Legacy.Keybindings help 'disabled'
org.gnome.Terminal.Legacy.Keybindings move-tab-left '<Control><Shift>Page_Up'
org.gnome.Terminal.Legacy.Keybindings move-tab-right '<Control><Shift>Page_Down'
org.gnome.Terminal.Legacy.Keybindings new-tab '<Control><Shift>t'
org.gnome.Terminal.Legacy.Keybindings new-window '<Control><Shift>n'
org.gnome.Terminal.Legacy.Keybindings next-tab '<Control>Page_Down'
org.gnome.Terminal.Legacy.Keybindings paste '<Control><Shift>v'
org.gnome.Terminal.Legacy.Keybindings preferences 'disabled'
org.gnome.Terminal.Legacy.Keybindings prev-tab '<Control>Page_Up'
org.gnome.Terminal.Legacy.Keybindings print 'disabled'
org.gnome.Terminal.Legacy.Keybindings read-only 'disabled'
org.gnome.Terminal.Legacy.Keybindings reset-and-clear 'disabled'
org.gnome.Terminal.Legacy.Keybindings reset 'disabled'
org.gnome.Terminal.Legacy.Keybindings save-contents 'disabled'
org.gnome.Terminal.Legacy.Keybindings select-all 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-10 '<Alt>0'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-11 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-12 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-13 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-14 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-15 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-16 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-17 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-18 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-19 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-1 '<Alt>1'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-20 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-21 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-22 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-23 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-24 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-25 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-26 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-27 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-28 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-29 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-2 '<Alt>2'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-30 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-31 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-32 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-33 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-34 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-35 'disabled'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-3 '<Alt>3'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-4 '<Alt>4'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-5 '<Alt>5'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-6 '<Alt>6'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-7 '<Alt>7'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-8 '<Alt>8'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-9 '<Alt>9'
org.gnome.Terminal.Legacy.Keybindings switch-to-tab-last 'disabled'
org.gnome.Terminal.Legacy.Keybindings toggle-menubar 'disabled'
org.gnome.Terminal.Legacy.Keybindings zoom-in '<Control>plus'
org.gnome.Terminal.Legacy.Keybindings zoom-normal '<Control>0'
org.gnome.Terminal.Legacy.Keybindings zoom-out '<Control>minus'
org.gnome.Terminal.Legacy.Settings confirm-close true
org.gnome.Terminal.Legacy.Settings context-info ['numbers']
org.gnome.Terminal.Legacy.Settings default-show-menubar true
org.gnome.Terminal.Legacy.Settings headerbar @mb nothing
org.gnome.Terminal.Legacy.Settings menu-accelerator-enabled true
org.gnome.Terminal.Legacy.Settings mnemonics-enabled false
org.gnome.Terminal.Legacy.Settings new-tab-position 'last'
org.gnome.Terminal.Legacy.Settings new-terminal-mode 'window'
org.gnome.Terminal.Legacy.Settings schema-version uint32 3
org.gnome.Terminal.Legacy.Settings shell-integration-enabled true
org.gnome.Terminal.Legacy.Settings shortcuts-enabled true
org.gnome.Terminal.Legacy.Settings tab-policy 'automatic'
org.gnome.Terminal.Legacy.Settings tab-position 'top'
org.gnome.Terminal.Legacy.Settings theme-variant 'dark'
org.gnome.Terminal.Legacy.Settings unified-menu false
org.gnome.Terminal.ProfilesList default 'b1dcc9dd-5262-4d8d-a863-c897e6d979b9'
org.gnome.Terminal.ProfilesList list ['b1dcc9dd-5262-4d8d-a863-c897e6d979b9']
```


run

``` sh
grep org.gnome.Terminal /usr/share/glib-2.0/schemas/*.xml
```


run

``` sh
dpkg -L gnome-terminal | grep '/schemas/'
```

show

```
/usr/share/glib-2.0/schemas/10_gnome-terminal.gschema.override
/usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
```

## gschema

* /usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override
* ~/.config/dconf/user

``` sh
dconf dump / | grep 'org/gnome/terminal' -A 14
```

## Package

run

``` sh
apt-cache show gnome-terminal | grep gtk
```

or run

```
apt-cache show gnome-terminal | grep '^Depends:'
```

show

```
Depends: default-dbus-session-bus | dbus-session-bus, gnome-terminal-data (<< 3.47), gnome-terminal-data (>= 3.45), gsettings-desktop-schemas (>= 0.1.0), python3, python3-gi, gir1.2-glib-2.0, dconf-gsettings-backend | gsettings-backend, libc6 (>= 2.34), libcairo2 (>= 1.2.4), libdconf1 (>= 0.14.0), libgcc-s1 (>= 3.0), libglib2.0-0 (>= 2.52.0), libgtk-3-0 (>= 3.23.0), libpango-1.0-0 (>= 1.14.0), libstdc++6 (>= 4.1.1), libuuid1 (>= 2.16), libvte-2.91-0 (>= 0.68.0), libx11-6
```
