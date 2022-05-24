---
title: archcraft
nav_order: 2705
has_children: false
parent: theme-source
grand_parent: 佈景主題
---


# archcraft


## subject

* [gtk-theme](#gtk-theme)
* [icon-theme](#icon-theme)
* [cursor-theme](#cursor-theme)
* [grub-theme](#grub-theme)
* [lightdm-theme](#lightdm-theme)


## gtk-theme

* [archcraft-themes](https://github.com/archcraft-os/archcraft-themes) ([materia-theme](https://github.com/nana-4/materia-theme))

clone

``` sh
git clone https://github.com/archcraft-os/archcraft-themes.git
```

切換到「archcraft-themes」這個資料夾

``` sh
cd archcraft-themes
```

打包

``` sh
./build.sh
```

安裝

``` sh
pamac install packages/*.zst
```


若要解除安裝，則可以執行下面指令

``` sh
pamac remove archcraft-gtk-theme-*
```




## icon-theme

* [archcraft-icons](https://github.com/archcraft-os/archcraft-icons)

clone

``` sh
git clone https://github.com/archcraft-os/archcraft-icons.git
```

切換到「archcraft-icons」這個資料夾

``` sh
cd archcraft-icons
```

打包

``` sh
./build.sh
```

安裝

``` sh
pamac install packages/*.zst
```


若要解除安裝，則可以執行下面指令

``` sh
pamac remove archcraft-icon-*
```




## cursor-theme

* [archcraft-cursors](https://github.com/archcraft-os/archcraft-cursors)


clone

``` sh
git clone https://github.com/archcraft-os/archcraft-cursors.git
```

切換到「archcraft-cursors」這個資料夾

``` sh
cd archcraft-cursors
```

打包

``` sh
./build.sh
```

安裝

``` sh
pamac install packages/*.zst
```


若要解除安裝，則可以執行下面指令

``` sh
pamac remove archcraft-cursor-*
```


## grub-theme

* [extra-packages](https://github.com/archcraft-os/extra-packages)

## lightdm-theme

* [archcraft-lightdm-webkit2-theme](https://github.com/archcraft-os/extra-packages/tree/main/archcraft-lightdm-webkit2-theme)


## packages

* archcraft-os / [packages](https://github.com/archcraft-os/packages/tree/main/x86_64)



## See Also

* [theme-package-materia](https://samwhelp.github.io/note-about-ubuntu/read/subject/theme/package/materia.html)
