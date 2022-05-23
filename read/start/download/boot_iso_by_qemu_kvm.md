---
title: Boot ISO By QEMU KVM
nav_order: 7023
has_children: false
parent: 下載
grand_parent: 入門
---


# Boot ISO By QEMU KVM


## Subject

* [範例](#範例)
* [Download ISO](#download-iso)
* [Boot ISO](#boot-iso)



## 範例

| [範例](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/download/iso/22.04-flavours) |
| --- |
| [Ubuntu](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/download/iso/22.04-flavours/ubuntu/boot.sh) |
| [Xubuntu](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/download/iso/22.04-flavours/xubuntu/boot.sh) |


## Prepare

執行

``` sh
sudo apt-get install qemu-kvm
```

或是

``` sh
sudo apt-get install qemu-system-x86
```

> 關於「[qemu-kvm](https://packages.ubuntu.com/jammy/qemu-kvm)」是「[Virtual Package](https://www.debian.org/doc/debian-policy/ch-binary.html#virtual-packages)」。

> 基本上安裝「qemu-kvm」就會安裝「qemu-system-x86」。


## Download ISO

``` sh
wget -c 'https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04-desktop-amd64.iso'
```

## Boot ISO

``` sh
kvm \
	-object memory-backend-ram,id=pc.ram,size=1024M,x-use-canonical-path-for-ramblock-id=off \
	-machine memory-backend=pc.ram \
	-m 1024M \
	-monitor stdio \
	-cdrom xubuntu-22.04-desktop-amd64.iso
```


## Package

* [qemu-kvm](https://packages.ubuntu.com/jammy/qemu-kvm)
* [qemu-system-x86](https://packages.ubuntu.com/jammy/qemu-system-x86)


## Manpage

* man 1 [kvm](http://manpages.ubuntu.com/manpages/jammy/en/man1/kvm.1.html)
* man 1 [qemu-system-x86_64](http://manpages.ubuntu.com/manpages/jammy/en/man1/qemu-system-x86_64.1.html)


## Link

* [五分鐘開始玩 qemu-kvm 虛擬機](https://newtoypia.blogspot.com/2015/02/qemu-kvm.html)
