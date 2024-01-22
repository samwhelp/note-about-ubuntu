

# Ubuntu / ISO


## Subject


* [Download ISO](#download-iso)
* [Mount ISO](#mount-iso)
* [Mount SquashFS](#mount-squashfs)
* [Extract initrd](#extract-initrd)
* [Unmount](#unmount)
* [Clean](#clean)



## Download ISO

``` sh
wget -c 'https://cdimage.ubuntu.com/xubuntu/releases/22.04.3/release/xubuntu-22.04.3-desktop-amd64.iso'
```

## Mount ISO

``` sh
sudo mount -o loop xubuntu-22.04.3-desktop-amd64.iso iso-root
```

## Mount SquashFS

``` sh
sudo mount -o loop iso-root/casper/filesystem.squashfs live-root
```

## Extract initrd

### by initramfs-extract

``` sh
initramfs-extract iso-root/casper/initrd initrd-root
```

### by unmkinitramfs

``` sh
unmkinitramfs iso-root/casper/initrd initramfs
```

## Unmount

``` sh
sudo umount live-root
sudo umount iso-root
```

> umount `live-root` first，then umount `iso-root`


## Clean

``` sh
sudo rm -rf initrd-root initramfs
```
