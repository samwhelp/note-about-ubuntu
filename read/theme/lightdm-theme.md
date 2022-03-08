---
title: lightdm-theme
nav_order: 2050
has_children: false
parent: 佈景主題
---


# lightdm-theme

## 參考連結

* Arch Wiki / [LightDM](https://wiki.archlinux.org/title/LightDM)
* Manjaro Wiki / [LightDM](https://wiki.manjaro.org/index.php/Install_Display_Managers#LightDM)

## lightdm-gtk-greeter

若是採用「[lightdm-gtk-greeter](https://archlinux.org/packages/extra/x86_64/lightdm-gtk-greeter/)」，請參考「[另一篇](https://samwhelp.github.io/note-about-manjaro/read/adjustment/env/lightdm.html)」的說明。

## lightdm-webkit2-greeter

### 探索

執行

``` sh
pamac search lightdm-webkit2-greeter
```

顯示

```
lightdm-webkit2-greeter-manjaro-dark                                                1.3.2-1  community
    A webkit2 greeter for LightDM build for Manjaro Dark version
lightdm-webkit2-greeter-manjaro                                                     1.3.2-1  community
    A webkit2 greeter for LightDM build for Manjaro
lightdm-webkit2-greeter                                                             2.2.5-4  community
    LightDM greeter that uses WebKit2 for theming via HTML/JavaScript.
```

### 資訊

執行

``` sh
pamac info lightdm-webkit2-greeter
```

顯示

```
Name                  : lightdm-webkit2-greeter
Version               : 2.2.5-4
Description           : LightDM greeter that uses WebKit2 for theming via HTML/JavaScript.
URL                   : https://github.com/antergos/web-greeter
Licenses              : GPL3
Repository            : community
Installed Size        : 2.1 MB
Depends On            : lightdm webkit2gtk accountsservice gnome-backgrounds
Make Dependencies     : gobject-introspection meson gettext dbus-glib
Packager              : Filipe Laíns <lains@archlinux.org>
Build Date            : 09/25/2020
Signatures            : Yes
```

* Arch Package / [lightdm-webkit2-greeter/](https://archlinux.org/packages/community/x86_64/lightdm-webkit2-greeter/)


### 安裝

執行

``` sh
pamac install lightdm-webkit2-greeter
```

### 設定

修改「/etc/lightdm/lightdm.conf」這個檔案，

將原本的

```
greeter-session=lightdm-gtk-greeter
```

改成

```
greeter-session=lightdm-webkit2-greeter
```

上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^greeter-session=.*/greeter-session=lightdm-webkit2-greeter/g' /etc/lightdm/lightdm.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^greeter-session' /etc/lightdm/lightdm.conf
```

顯示

```
greeter-session=lightdm-webkit2-greeter
```

若要改回「lightdm-gtk-greeter」，則是執行下面指令

``` sh
sudo sed -i 's/^greeter-session=.*/greeter-session=lightdm-gtk-greeter/g' /etc/lightdm/lightdm.conf
```


## lightdm-webkit2-theme

### 探索

執行

``` sh
pamac search lightdm-webkit2-theme -a
```

顯示

```
lightdm-webkit2-theme-tty-git                                                        r5.0b8fc23-1   AUR
    A simple terminal style theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-sapphire                                                       1.0.1-1        AUR
    A simple Sapphire theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-reactive                                                       0.4.4-2        AUR
    Reactive, A Simple and fast lightdm webkit2 theme for linux
lightdm-webkit2-theme-obsidian                                                       1.2.1-1        AUR
    A simple dark theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-material2-git                                                  r15.2e21881-1  AUR
    A material design LightDM theme for lightdm-webkit2-greeter from the latest git
lightdm-webkit2-theme-material2                                                      0.0.5-1        AUR
    A material design LightDM theme for lightdm-webkit2-greeter
lightdm-webkit2-theme-glorious                                                       2.0.5-3        AUR
    A sleek, modern and glorified LightDM webkit2 theme
lightdm-webkit2-theme-bevel-git                                                      0.3-1          AUR
    A fork of Blender3D's theme
lightdm-webkit2-theme-arch                                                           0.1-1          AUR
    Minimal theme for lightdm-webkit2-greeter using humorous wallpapers about Arch
    Linux.
lightdm-webkit2-theme-alter-nosplash                                                 3.0-3          AUR
    AlterLinux webkit2 greeter theme
lightdm-webkit2-theme-alter-git                                                      r58.82f1b9d-1  AUR
    AlterLinux webkit2 greeter theme
lightdm-webkit2-theme-alter                                                          3.0-1          AUR
    AlterLinux webkit2 greeter theme
```

## lightdm-webkit2-theme-list


| theme |
| --- |
| [lightdm-webkit2-theme-glorious](#lightdm-webkit2-theme-glorious) |
| [lightdm-webkit2-theme-tty-git](#lightdm-webkit2-theme-tty-git) |
| [lightdm-webkit2-theme-material2](#lightdm-webkit2-theme-material2) |
| [lightdm-webkit2-theme-reactive](#lightdm-webkit2-theme-reactive) |
| [lightdm-webkit2-theme-alter](#lightdm-webkit2-theme-alter) |
| [archcraft-lightdm-webkit2-theme](#archcraft-lightdm-webkit2-theme) |



## lightdm-webkit2-theme-glorious

### 資訊

執行

```
pamac info lightdm-webkit2-theme-glorious -a
```

顯示

```
Name                  : lightdm-webkit2-theme-glorious
Version               : 2.0.5-3
Description           : A sleek, modern and glorified LightDM webkit2 theme
URL                   : https://github.com/manilarome/lightdm-webkit2-theme-glorious
Licenses              : GPL3
Repository            : AUR
Depends On            : lightdm-webkit2-greeter
Maintainer            : manilarome
First Submitted       : 06/27/2020
Last Modified         : 09/23/2020
Votes                 : 6
```

* AUR / [lightdm-webkit2-theme-glorious](https://aur.archlinux.org/packages/lightdm-webkit2-theme-glorious/)
* GitHub / [lightdm-webkit2-theme-glorious](https://github.com/manilarome/lightdm-webkit2-theme-glorious)

### 安裝

執行

```
pamac build lightdm-webkit2-theme-glorious
```


### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = glorious
```

將原本

```
debug_mode          = false
```

改成

```
debug_mode          = true
```

上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^webkit_theme.*/webkit_theme=glorious/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^webkit_theme' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
webkit_theme=glorious
```

``` sh
sudo sed -i 's/^debug_mode.*/debug_mode=true/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^debug_mode' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
debug_mode=true
```


執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```


## lightdm-webkit2-theme-tty-git

### 資訊

執行

```
pamac info lightdm-webkit2-theme-tty-git -a
```

顯示

```
Name                  : lightdm-webkit2-theme-tty-git
Version               : r5.0b8fc23-1
Description           : A simple terminal style theme for lightdm-webkit2-greeter
URL                   : https://github.com/eNzyOfficial/lightdm-tty
Licenses              : WTFPL
Repository            : AUR
Depends On            : lightdm-webkit2-greeter
Make Dependencies     : git
Maintainer            : tardog
First Submitted       : 11/07/2017
Last Modified         : 11/07/2017
Votes                 : 1
```

* AUR / [lightdm-webkit2-theme-tty-git](https://aur.archlinux.org/packages/lightdm-webkit2-theme-tty-git/)
* GitHub / [lightdm-tty](https://github.com/eNzyOfficial/lightdm-tty)

### 安裝

執行

```
pamac build lightdm-webkit2-theme-tty-git
```

安裝完畢後，可以執行下面指令，觀看有哪些檔案

``` sh
pacman -Ql lightdm-webkit2-theme-tty-git -q
```

顯示

```
/usr/
/usr/share/
/usr/share/lightdm-webkit/
/usr/share/lightdm-webkit/themes/
/usr/share/lightdm-webkit/themes/tty/
/usr/share/lightdm-webkit/themes/tty/LICENSE
/usr/share/lightdm-webkit/themes/tty/PKGBUILD
/usr/share/lightdm-webkit/themes/tty/README.MD
/usr/share/lightdm-webkit/themes/tty/css/
/usr/share/lightdm-webkit/themes/tty/css/default.css
/usr/share/lightdm-webkit/themes/tty/css/normalize.css
/usr/share/lightdm-webkit/themes/tty/img/
/usr/share/lightdm-webkit/themes/tty/img/bg.jpg
/usr/share/lightdm-webkit/themes/tty/index.html
/usr/share/lightdm-webkit/themes/tty/js/
/usr/share/lightdm-webkit/themes/tty/js/commands.js
/usr/share/lightdm-webkit/themes/tty/js/main.js
/usr/share/lightdm-webkit/themes/tty/js/mock.js
/usr/share/lightdm-webkit/themes/tty/screenshots/
/usr/share/lightdm-webkit/themes/tty/screenshots/screenshot_1.gif
/usr/share/lightdm-webkit/themes/tty/test.sh
```


### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = tty
```


上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^webkit_theme.*/webkit_theme=tty/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^webkit_theme' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
webkit_theme=tty
```

執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```




## lightdm-webkit2-theme-material2

### 資訊

執行

```
pamac info lightdm-webkit2-theme-material2 -a
```

顯示

```
Name                  : lightdm-webkit2-theme-material2
Version               : 0.0.5-1
Description           : A material design LightDM theme for
                        lightdm-webkit2-greeter
URL                   : https://github.com/FallingSnow/lightdm-webkit2-material2
Licenses              : WTFPL
Repository            : AUR
Depends On            : lightdm-webkit2-greeter
Maintainer            : FallenSnow
First Submitted       : 12/24/2016
Last Modified         : 02/14/2017
Votes                 : 16
```

* AUR / [lightdm-webkit2-theme-material2](https://aur.archlinux.org/packages/lightdm-webkit2-theme-material2/)
* GitHub / [lightdm-webkit2-material2](https://github.com/FallingSnow/lightdm-webkit2-material2)


### 安裝

執行

```
pamac build lightdm-webkit2-theme-material2
```

### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = material2
```


上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^webkit_theme.*/webkit_theme=material2/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^webkit_theme' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
webkit_theme=material2
```

執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```




## lightdm-webkit2-theme-reactive

### 資訊

執行

```
pamac info lightdm-webkit2-theme-reactive -a
```

顯示

```
Name                  : lightdm-webkit2-theme-reactive
Version               : 0.4.4-2
Description           : Reactive, A Simple and fast lightdm webkit2 theme for linux
URL                   : https://github.com/gitneeraj/lightdm-webkit2-theme-reactive
Licenses              : MIT
Repository            : AUR
Depends On            : lightdm-webkit2-greeter
Maintainer            : gitneeraj
First Submitted       : 05/14/2021
Last Modified         : 06/17/2021
Votes                 : 1
```

* AUR / [lightdm-webkit2-theme-reactive](https://aur.archlinux.org/packages/lightdm-webkit2-theme-reactive/)
* GitHub / [lightdm-webkit2-theme-reactive](https://github.com/gitneeraj/lightdm-webkit2-theme-reactive)

### 安裝

執行

```
pamac build lightdm-webkit2-theme-reactive
```

### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = reactive
```


上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^webkit_theme.*/webkit_theme=reactive/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^webkit_theme' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
webkit_theme=reactive
```

執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```




## lightdm-webkit2-theme-alter

### 資訊

執行

```
pamac info lightdm-webkit2-theme-alter -a
```

顯示

```
Name                  : lightdm-webkit2-theme-alter
Version               : 3.0-1
Description           : AlterLinux webkit2 greeter theme
URL                   : https://github.com/SereneTeam/lightdm-webkit2-theme-alter
Licenses              : MIT
Repository            : AUR
Depends On            : lightdm lightdm-webkit2-greeter
Conflicts With        : lightdm-webkit2-theme-alter-git
Maintainer            : hayao
First Submitted       : 03/05/2020
Last Modified         : 12/18/2020
Votes                 : 1
```

* AUR / [lightdm-webkit2-theme-alter](https://aur.archlinux.org/packages/lightdm-webkit2-theme-alter/)
* GitHub / [lightdm-webkit2-theme-alter]( https://github.com/SereneTeam/lightdm-webkit2-theme-alter)

### 安裝

執行

```
pamac build lightdm-webkit2-theme-alter
```

### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = alter
```


上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^webkit_theme.*/webkit_theme=alter/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^webkit_theme' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
webkit_theme=alter
```

執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```


## archcraft-lightdm-webkit2-theme

* [https://github.com/archcraft-os/extra-packages/tree/main/archcraft-lightdm-webkit2-theme](https://github.com/archcraft-os/extra-packages/tree/main/archcraft-lightdm-webkit2-theme)
* [https://github.com/archcraft-os/packages/tree/main/x86_64](https://github.com/archcraft-os/packages/tree/main/x86_64)

### Clone

執行

``` sh
git clone https://github.com/archcraft-os/extra-packages.git
```

### 切換工作路徑

切換到「extra-packages/archcraft-lightdm-webkit2-theme」這個資料夾

``` sh
cd extra-packages/archcraft-lightdm-webkit2-theme
```

執行

``` sh
ls -1
```

顯示

```
files
PKGBUILD
```

## 編譯和安裝

執行

``` sh
makepkg -si
```

### 設定

修改「/etc/lightdm/lightdm-webkit2-greeter.conf」這個檔案，

將原本

```
webkit_theme        = antergos
```

改成

```
webkit_theme        = archcraft
```


上面的動作，可以執行下面指令，直接修改

``` sh
sudo sed -i 's/^webkit_theme.*/webkit_theme=archcraft/g' /etc/lightdm/lightdm-webkit2-greeter.conf
```

執行下面指令，確認是否有修改成功

``` sh
grep '^webkit_theme' /etc/lightdm/lightdm-webkit2-greeter.conf
```

顯示

```
webkit_theme=archcraft
```

執行下面指令，測試

``` sh
dm-tool switch-to-greeter
```
