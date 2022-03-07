
## gsettings

``` sh
$ gsettings list-recursively | grep mousepad
```

``` sh
$ gsettings list-recursively | grep 'org.xfce.mousepad'
```

``` sh
$ gsettings list-recursively | grep 'org.xfce.mousepad.preferences'
```

## gschema

``` sh
$ pacman -Ql mousepad | grep xml
```

``` sh
$ pacman -Ql mousepad | grep gschema
```

``` sh
$ view /usr/share/glib-2.0/schemas/org.xfce.mousepad.gschema.xml
```
