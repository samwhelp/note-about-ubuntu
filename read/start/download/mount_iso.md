---
title: Mount ISO
nav_order: 7050
has_children: false
parent: 下載
grand_parent: 入門
---


# Mount ISO


## Subject

* [範例](#範例)
* [Download ISO](#download-iso)
* [Mount ISO](#mount-iso-1)
* [Mount SquashFS](#mount-squashfs)
* [Extract initrd](#extract-initrd)
* [Unmount](#unmount)
* [Clean](#clean)


## 範例

* [範例](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/download/iso/22.04-flavours)


## Download ISO

``` sh
wget -c 'https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04-desktop-amd64.iso'
```

## Mount ISO

``` sh
sudo mount -o loop xubuntu-22.04-desktop-amd64.iso iso-root
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

> 要先卸載「live-root」，才能卸載「iso-root」


## Clean

``` sh
sudo rm -rf initrd-root initramfs
```
