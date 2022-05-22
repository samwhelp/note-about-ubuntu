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


## initrd-root

執行

``` sh
ls -1 initrd-root
```

顯示

```
bin
conf
cryptroot
etc
init
kernel
lib
lib32
lib64
libx32
run
sbin
scripts
usr
var
```


## initrd-root/scripts

執行

``` sh
ls -1 initrd-root/scripts/
```

顯示

```
casper
casper-bottom
casper-functions
casper-helpers
casper-premount
functions
init-bottom
init-premount
init-top
local
local-block
local-bottom
local-premount
local-top
nfs
panic
zfs
```

* $ man [casper](http://manpages.ubuntu.com/manpages/jammy/en/man7/casper.7.html)
* Ubuntu Package: [casper](https://packages.ubuntu.com/jammy/casper) / [filelist](https://packages.ubuntu.com/jammy/amd64/casper/filelist)


## initrd-root/init

執行
``` sh
file initrd-root/init
```

顯示

```
initrd-root/init: POSIX shell script, ASCII text executable
```


* Ubuntu Package: [initramfs-tools-core](https://packages.ubuntu.com/jammy/initramfs-tools-core) / [filelist](https://packages.ubuntu.com/jammy/all/initramfs-tools-core/filelist)
* /usr/share/initramfs-tools/init

執行

``` sh
grep '/usr/share/initramfs-tools/init' /usr/sbin/mkinitramfs -n
```

顯示

```
326:cp -p /usr/share/initramfs-tools/init "${DESTDIR}/init"
```



## file initrd-root/scripts/casper

執行
``` sh
file initrd-root/scripts/casper
```

顯示

```
initrd-root/scripts/casper: POSIX shell script, ASCII text executable
```


* $ man [casper](http://manpages.ubuntu.com/manpages/jammy/en/man7/casper.7.html)
* Ubuntu Package: [casper](https://packages.ubuntu.com/jammy/casper) / [filelist](https://packages.ubuntu.com/jammy/amd64/casper/filelist)
* live-custom-ubuntu-from-scratch / [chroot_build.sh](https://github.com/mvallim/live-custom-ubuntu-from-scratch/blob/master/scripts/chroot_build.sh#L105)


## initrd-root/scripts/local

執行

``` sh
file initrd-root/scripts/local
```

顯示

```
initrd-root/scripts/local: ASCII text
```

* Ubuntu Package: [initramfs-tools-core](https://packages.ubuntu.com/jammy/initramfs-tools-core) / [filelist](https://packages.ubuntu.com/jammy/all/initramfs-tools-core/filelist)
* /usr/share/initramfs-tools/scripts/local


## live-root

執行

``` sh
ls -1 live-root
```

顯示

```
bin
boot
dev
etc
home
lib
lib32
lib64
libx32
media
mnt
opt
proc
root
run
sbin
snap
srv
sys
tmp
usr
var
```


## live-root/sbin/init

執行
``` sh
file live-root/sbin/init
```

顯示

```
live-root/sbin/init: symbolic link to /lib/systemd/systemd
```
