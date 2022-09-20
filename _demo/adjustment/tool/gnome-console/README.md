
# gnome-console




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
kgx --version
```

show

```
# KGX 42.beta using VTE 0.68.0 +BIDI +GNUTLS +ICU +SYSTEMD
```


run

``` sh
gsettings list-recursively | grep org.gnome.Console | sort
```

show

```
org.gnome.Console font-scale 1.0
org.gnome.Console scrollback-lines int64 10000
org.gnome.Console shell @as []
org.gnome.Console theme 'night'
```


run

``` sh
grep org.gnome.Console /usr/share/glib-2.0/schemas/*.xml
```


run

``` sh
dpkg -L gnome-console | grep '/schemas/'
```

show

```
/usr/share/glib-2.0/schemas/org.gnome.Console.gschema.xml
```

## gschema

* /usr/share/glib-2.0/schemas/50_gnome-console.gschema.override
* ~/.config/dconf/user

``` sh
dconf dump / | grep 'org/gnome/Console' -A 5
```

## Package

run

``` sh
apt-cache show gnome-console | grep gtk
```

or run

```
apt-cache show gnome-console | grep '^Depends:'
```

show

```
Depends: dconf-gsettings-backend | gsettings-backend, libc6 (>= 2.34), libglib2.0-0 (>= 2.66.0), libgtk-3-0 (>= 3.24.0), libgtop-2.0-11 (>= 2.22.3), libhandy-1-0 (>= 1.5.0), libpango-1.0-0 (>= 1.14.0), libvte-2.91-0 (>= 0.67.90), gsettings-desktop-schemas (>= 0.1.0)
```
