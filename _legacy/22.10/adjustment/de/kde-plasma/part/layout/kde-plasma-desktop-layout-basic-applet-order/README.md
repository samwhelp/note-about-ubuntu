
# kde-plasma / Adjustment


## Spec

* [keybind](spec-keybind.md)
* [mousebind](spec-mousebind.md)


## Note

run

``` sh
plasmashell --version
```

show

```
plasmashell 5.25.5
```

### AppletOrder

* plasma-org.kde.plasma.desktop-appletsrc

```
AppletOrder=3;4;5;6;7;20;21
```

```
AppletOrder=3;5;4;6;7;20;21
```


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
