
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


## ls only dir

* https://stackoverflow.com/questions/14352290/listing-only-directories-using-ls-in-bash


## ls only file

* https://askubuntu.com/questions/811210/how-can-i-make-ls-only-display-files

``` sh
ls -p | grep -v /
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
