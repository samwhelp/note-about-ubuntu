
# profile


## Reference

* Arch Wiki / [LightDM](https://wiki.archlinux.org/index.php/LightDM)
* Manjaro Wiki / Install Display Managers / [LightDM](https://wiki.manjaro.org/index.php/Install_Display_Managers#LightDM)


## Config File Path

* [/etc/lightdm/lightdm-gtk-greeter.conf](config/lightdm/lightdm-gtk-greeter/main/lightdm-gtk-greeter.conf)


## GUI Tool

* lightdm-gtk-greeter-settings-pkexec (LightDM GTK+ Greeter settings) (/usr/share/applications/lightdm-gtk-greeter-settings.desktop)


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
pamac search lightdm
```

show

```
deepin-session-shell                                      5.5.24-2    community
    Deepin desktop-environment - session-shell module
liblightdm-qt5                                            1:1.30.0-4  extra
    LightDM Qt client library
lightdm-webkit-theme-litarvan                             3.1.0-1     community
    Modern and full-featured LightDM theme
lightdm-webkit2-greeter-manjaro-dark                      1.3.2-1     community
    A webkit2 greeter for LightDM build for Manjaro Dark
    version
lightdm-webkit2-greeter-manjaro                           1.3.2-1     community
    A webkit2 greeter for LightDM build for Manjaro
lightdm-webkit2-greeter                                   2.2.5-4     community
    LightDM greeter that uses WebKit2 for theming via
    HTML/JavaScript.
lightdm-slick-greeter                                     1.5.6-1     community
    A slick-looking LightDM greeter
lightdm-settings                                          1.5.7-1     community
    A configuration tool for the LightDM display manager
lightdm-pantheon-greeter                                  6.0.1-2     community
    Pantheon greeter for LightDM
lightdm-gtk-greeter-settings                  [Installed] 1.2.2-7     community
    Settings editor for the LightDM GTK+ Greeter
lightdm-gtk-greeter                           [Installed] 1:2.0.8-2   extra
    GTK+ greeter for LightDM
lightdm                                       [Installed] 1:1.30.0-4  extra
    A lightweight display manager
```
