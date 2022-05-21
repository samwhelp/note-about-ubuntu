---
title: Explore ISO
nav_order: 7060
has_children: false
parent: 下載
grand_parent: 入門
---


# Explore ISO


## Subject

* [前提](#前提)


## 前提

延續前面的「[掛載 Live ISO]()」，

接下來「探索 Live ISO」。


## iso-root

執行

``` sh
ls -1 iso-root
```

顯示

```
boot
boot.catalog
casper
dists
EFI
install
md5sum.txt
pool
preseed
ubuntu
```

執行

``` sh
file iso-root/ubuntu
```

顯示

```
iso-root/ubuntu: symbolic link to .
```

## iso-root/casper

執行

``` sh
ls -1 iso-root/casper/
```

顯示

```
filesystem.manifest
filesystem.manifest-minimal-remove
filesystem.manifest-remove
filesystem.size
filesystem.squashfs
filesystem.squashfs.gpg
initrd
vmlinuz
```


## iso-root/boot

執行

``` sh
ls -1 iso-root/boot
```

顯示

```
grub
memtest86+.bin
```

## iso-root/boot/grub

執行

``` sh
ls -1 iso-root/boot/grub
```

顯示

```
fonts
grub.cfg
i386-pc
loopback.cfg
x86_64-efi
```


## iso-root/boot/grub/grub.cfg

執行

``` sh
cat iso-root/boot/grub/grub.cfg
```

顯示

```
set timeout=30

loadfont unicode

set menu_color_normal=white/black
set menu_color_highlight=black/light-gray

menuentry "Try or Install Xubuntu" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed maybe-ubiquity quiet splash ---
	initrd	/casper/initrd
}
menuentry "Xubuntu (safe graphics)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz nomodeset file=/cdrom/preseed/xubuntu.seed maybe-ubiquity quiet splash ---
	initrd	/casper/initrd
}
menuentry "OEM install (for manufacturers)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed only-ubiquity oem-config/enable=true quiet splash ---
	initrd	/casper/initrd
}
grub_platform
if [ "$grub_platform" = "efi" ]; then
menuentry 'Boot from next volume' {
	exit 1
}
menuentry 'UEFI Firmware Settings' {
	fwsetup
}
else
menuentry 'Test memory' {
	linux16 /boot/memtest86+.bin
}
fi
```

* Grub 探索筆記 / [Command](https://samwhelp.github.io/note-about-grub/read/start/command.html)


## iso-root/boot/grub/grub.cfg

執行

``` sh
cat iso-root/boot/grub/loopback.cfg
```

顯示

```
menuentry "Try or Install Xubuntu" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed maybe-ubiquity iso-scan/filename=${iso_path} quiet splash ---
	initrd	/casper/initrd
}
menuentry "Xubuntu (safe graphics)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz nomodeset file=/cdrom/preseed/xubuntu.seed maybe-ubiquity iso-scan/filename=${iso_path} quiet splash ---
	initrd	/casper/initrd
}
menuentry "OEM install (for manufacturers)" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed only-ubiquity oem-config/enable=true iso-scan/filename=${iso_path} quiet splash ---
	initrd	/casper/initrd
}
```

* Super Grub2 Disk Wiki / [Loopback.cfg](https://www.supergrubdisk.org/wiki/Loopback.cfg)
