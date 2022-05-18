---
title: 探索
nav_order: 5010
has_children: true
parent: initramfs
---


# 探索


## initramfs-tools

執行

``` sh
dpkg -l '*initramfs*'
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                 Version           Architecture Description
+++-====================-=================-============-================================================
ii  busybox-initramfs    1:1.30.1-7ubuntu3 amd64        Standalone shell setup for initramfs
ii  initramfs-tools      0.140ubuntu13     all          generic modular initramfs generator (automation)
ii  initramfs-tools-bin  0.140ubuntu13     amd64        binaries used by initramfs-tools
ii  initramfs-tools-core 0.140ubuntu13     all          generic modular initramfs generator (core tools)
un  linux-initramfs-tool <none>            <none>       (no description available)
un  tiny-initramfs       <none>            <none>       (no description available)
```

執行

``` sh
dpkg -l '*initramfs*' | grep ii | cut -d ' ' -f 3 | awk '{print "* ["$1"](https://packages.ubuntu.com/jammy/"$1")" }'
```

* [busybox-initramfs](https://packages.ubuntu.com/jammy/busybox-initramfs)
* [initramfs-tools](https://packages.ubuntu.com/jammy/initramfs-tools)
* [initramfs-tools-bin](https://packages.ubuntu.com/jammy/initramfs-tools-bin)
* [initramfs-tools-core](https://packages.ubuntu.com/jammy/initramfs-tools-core)


## initramfs

執行

``` sh
apt-cache search initramfs | sort -u
```

顯示

```
acpi-override-initramfs - initramfs-tools hook to override ACPI tables
bcache-tools - bcache userspace tools
bilibop-common - shell functions for bilibop scripts
bilibop-lockfs - lock filesystems and write changes into RAM
busybox-initramfs - Standalone shell setup for initramfs
clevis-initramfs - Clevis initramfs integration
cloud-initramfs-copymods - copy initramfs modules into root filesystem for later use
cloud-initramfs-dyn-netconf - write a network interface file in /run for BOOTIF
cloud-initramfs-growroot - automatically resize the root partition on first boot
cloud-initramfs-rescuevol - boot off a rescue volume rather than root filesystem
cloud-initramfs-rooturl - use a tarball or squashfs image in a url as the root filesystem
cloud-initramfs-updateroot - extract a tarball over root filesystem before pivot
crossgrader - Debian crossgrading tool
cryptsetup - disk encryption support - startup scripts
cryptsetup-initramfs - disk encryption support - initramfs integration
debhelper - helper programs for debian/rules
debian-kernel-handbook-ja - reference to Debian Linux kernel packages and development (Japanese)
debian-kernel-handbook - reference to Debian Linux kernel packages and development
debirf - build a kernel and initrd to run Debian from RAM
dracut-config-generic - dracut is an event driven initramfs infrastructure
dracut-config-rescue - dracut is an event driven initramfs infrastructure
dracut-core - dracut is an event driven initramfs infrastructure (core tools)
dracut - Initramfs generator using udev
dracut-live - dracut is an event driven initramfs infrastructure (live image modules)
dracut-network - dracut is an event driven initramfs infrastructure (network modules)
dracut-squash - dracut is an event driven initramfs infrastructure (squashfs modules)
dropbear-initramfs - lightweight SSH2 server and client - initramfs integration
ignition - First boot installer and configuration tool
initramfs-tools-bin - binaries used by initramfs-tools
initramfs-tools-core - generic modular initramfs generator (core tools)
initramfs-tools-devices - Common initramfs scripts for Ubuntu Core and Classic
initramfs-tools - generic modular initramfs generator (automation)
jasper - Configure a preinstalled ext2/3 system image
klibc-utils - small utilities built with klibc for early boot
libklibc - minimal libc subset for use with initramfs
live-boot-initramfs-tools - Live System Boot Components (initramfs-tools backend)
live-boot - Live System Boot Components
mksh - MirBSD Korn Shell
ostree-boot - libostree boot loader and initramfs integration
overlayroot - use an overlayfs on top of a read-only root filesystem
tiny-initramfs-core - Minimalistic initramfs implementation (core tools)
tiny-initramfs - Minimalistic initramfs implementation (automation)
tpm2-initramfs-tool - Tool used in initramfs to seal/unseal FDE key to the TPM
tuxonice-userui - user-space interfaces for TuxOnIce
yubikey-luks - YubiKey two factor authentication for LUKS disks
zfs-dracut - OpenZFS root filesystem capabilities for Linux - dracut
zfs-initramfs - OpenZFS root filesystem capabilities for Linux - initramfs
```

## casper

執行

``` sh
apt-cache search casper | sort -u
```

顯示

```
casper - Run a "live" preinstalled system from read-only media
dell-recovery-casper - Dell Recovery Casper Hooks
texlive-bibtex-extra - TeX Live: BibTeX additional styles
ubiquity-casper - Configuration hooks for live installer
```
