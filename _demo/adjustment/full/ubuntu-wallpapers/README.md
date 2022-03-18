
# ubuntu-wallpapers

* [package-list](package-list.txt)


## Package

``` sh
dpkg -l *ubuntu-wallpapers* | grep 'ubuntu-wallpapers' | awk '{print "* ["$2"](https://packages.ubuntu.com/jammy/"$2") / [filelist](https://packages.ubuntu.com/jammy/all/"$2"/filelist)"}'
```

* [ubuntu-wallpapers](https://packages.ubuntu.com/jammy/ubuntu-wallpapers) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers/filelist)
* [ubuntu-wallpapers-artful](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-artful) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-artful/filelist)
* [ubuntu-wallpapers-bionic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-bionic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-bionic/filelist)
* [ubuntu-wallpapers-cosmic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-cosmic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-cosmic/filelist)
* [ubuntu-wallpapers-disco](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-disco) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-disco/filelist)
* [ubuntu-wallpapers-eoan](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-eoan) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-eoan/filelist)
* [ubuntu-wallpapers-focal](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-focal) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-focal/filelist)
* [ubuntu-wallpapers-groovy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-groovy) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-groovy/filelist)
* [ubuntu-wallpapers-hirsute](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-hirsute) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-hirsute/filelist)
* [ubuntu-wallpapers-impish](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-impish) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-impish/filelist)
* [ubuntu-wallpapers-karmic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-karmic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-karmic/filelist)
* [ubuntu-wallpapers-lucid](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-lucid) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-lucid/filelist)
* [ubuntu-wallpapers-maverick](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-maverick) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-maverick/filelist)
* [ubuntu-wallpapers-natty](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-natty) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-natty/filelist)
* [ubuntu-wallpapers-oneiric](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-oneiric) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-oneiric/filelist)
* [ubuntu-wallpapers-precise](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-precise) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-precise/filelist)
* [ubuntu-wallpapers-quantal](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-quantal) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-quantal/filelist)
* [ubuntu-wallpapers-raring](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-raring) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-raring/filelist)
* [ubuntu-wallpapers-saucy](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-saucy) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-saucy/filelist)
* [ubuntu-wallpapers-trusty](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-trusty) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-trusty/filelist)
* [ubuntu-wallpapers-utopic](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-utopic) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-utopic/filelist)
* [ubuntu-wallpapers-vivid](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-vivid) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-vivid/filelist)
* [ubuntu-wallpapers-wily](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-wily) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-wily/filelist)
* [ubuntu-wallpapers-xenial](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-xenial) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-xenial/filelist)
* [ubuntu-wallpapers-yakkety](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-yakkety) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-yakkety/filelist)
* [ubuntu-wallpapers-zesty](https://packages.ubuntu.com/jammy/ubuntu-wallpapers-zesty) / [filelist](https://packages.ubuntu.com/jammy/all/ubuntu-wallpapers-zesty/filelist)


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
