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

``` sh
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

``` sh
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

``` sh
326:cp -p /usr/share/initramfs-tools/init "${DESTDIR}/init"
```

> 關於「initrd-root/init」 是透過「mkinitramfs」產生的，

> 所以要探索「initrd-root/init」，也可以直接探索「/usr/share/initramfs-tools/init」。


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


## Explore: initrd-root/init

執行

``` sh
grep 'init=' initrd-root/init -n
```

顯示

``` sh
65:export init=/sbin/init
96:	init=*)
97:		init=${x#init=}
315:	init=
318:			init="$inittest"
326:	panic "No init found. Try passing init= bootarg."
```

執行

``` sh
grep '/proc/cmdline' initrd-root/init -n -A 10
```

顯示

```
21:for x in $(cat /proc/cmdline); do
22-	case $x in
23-	initramfs.clear)
24-		clear
25-		;;
26-	quiet)
27-		quiet=y
28-		;;
29-	esac
30-done
31-
--
94:for x in $(cat /proc/cmdline); do
95-	case $x in
96-	init=*)
97-		init=${x#init=}
98-		;;
99-	root=*)
100-		ROOT=${x#root=}
101-		if [ -z "${BOOT}" ] && [ "$ROOT" = "/dev/nfs" ]; then
102-			BOOT=nfs
103-		fi
104-		;;
```

執行

``` sh
grep 'boot=' initrd-root/init -n
```

顯示

```
75:export fastboot=n
155:	boot=*)
156:		BOOT=${x#boot=}
221:		fastboot=y
```

執行

``` sh
grep 'BOOT=' initrd-root/init -n
```

顯示

``` sh
60:export BOOT=
102:			BOOT=nfs
156:		BOOT=${x#boot=}
235:# Default to BOOT=local if no boot script defined.
237:	BOOT=local
```

執行

``` sh
grep 'quiet' initrd-root/init -n
```

顯示

```
26:	quiet)
27:		quiet=y
32:if [ "$quiet" != "y" ]; then
33:	quiet=n
36:export quiet
188:		quiet=n
198:		quiet=n
260:[ "$quiet" != "y" ] && log_begin_msg "Loading essential drivers"
263:[ "$quiet" != "y" ] && log_end_msg
270:[ "$quiet" != "y" ] && log_begin_msg "Running /scripts/init-premount"
272:[ "$quiet" != "y" ] && log_end_msg
300:[ "$quiet" != "y" ] && log_begin_msg "Running /scripts/init-bottom"
303:[ "$quiet" != "y" ] && log_end_msg
351:unset quiet
```

對照上面的「[iso-root/boot/grub/grub.cfg](https://samwhelp.github.io/note-about-ubuntu/read/start/download/explore_iso.html#iso-rootbootgrubgrubcfg)」裡面的「grub boot menu entry」


舉例：

``` sh
menuentry "Try or Install Xubuntu" {
	set gfxpayload=keep
	linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed maybe-ubiquity quiet splash ---
	initrd	/casper/initrd
}
```

其中有下面這一行，其中有一個參數「quiet」

```
linux	/casper/vmlinuz file=/cdrom/preseed/xubuntu.seed maybe-ubiquity quiet splash ---
```

> 在「initrd-root/init」，是透過「cat /proc/cmdline」來獲取的。


執行下面指令

``` sh
cat initrd-root/init
```

或是執行

``` sh
cat /usr/share/initramfs-tools/init
```

顯示

``` sh
#!/bin/sh

# Default PATH differs between shells, and is not automatically exported
# by klibc dash.  Make it consistent.
# Furthermore, this PATH ends up being used by the init, set it to the
# Standard PATH, without /snap/bin as documented in
# https://wiki.ubuntu.com/PATH
# This also matches /etc/environment, but without games path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

[ -d /dev ] || mkdir -m 0755 /dev
[ -d /root ] || mkdir -m 0700 /root
[ -d /sys ] || mkdir /sys
[ -d /proc ] || mkdir /proc
[ -d /tmp ] || mkdir /tmp
mkdir -p /var/lock
mount -t sysfs -o nodev,noexec,nosuid sysfs /sys
mount -t proc -o nodev,noexec,nosuid proc /proc

# shellcheck disable=SC2013
for x in $(cat /proc/cmdline); do
	case $x in
	initramfs.clear)
		clear
		;;
	quiet)
		quiet=y
		;;
	esac
done

if [ "$quiet" != "y" ]; then
	quiet=n
	echo "Loading, please wait..."
fi
export quiet

# Note that this only becomes /dev on the real filesystem if udev's scripts
# are used; which they will be, but it's worth pointing out
mount -t devtmpfs -o nosuid,mode=0755 udev /dev
mkdir /dev/pts
mount -t devpts -o noexec,nosuid,gid=5,mode=0620 devpts /dev/pts || true

# Export the dpkg architecture
export DPKG_ARCH=
. /conf/arch.conf

# Set modprobe env
export MODPROBE_OPTIONS="-qb"

# Export relevant variables
export ROOT=
export ROOTDELAY=
export ROOTFLAGS=
export ROOTFSTYPE=
export IP=
export IP6=
export VLAN=
export DEVICE=
export BOOT=
export BOOTIF=
export UBIMTD=
export NETWORK_SKIP_ENSLAVED=
export break=
export init=/sbin/init
export readonly=y
export rootmnt=/root
export debug=
export panic=
export blacklist=
export resume=
export resume_offset=
export noresume=
export drop_caps=
export fastboot=n
export forcefsck=n
export fsckfix=


# mdadm needs hostname to be set. This has to be done before the udev rules are called!
if [ -f "/etc/hostname" ]; then
        /bin/hostname -F /etc/hostname >/dev/null 2>&1
fi

# Bring in the main config
. /conf/initramfs.conf
for conf in conf/conf.d/*; do
	[ -f "${conf}" ] && . "${conf}"
done
. /scripts/functions

# Parse command line options
# shellcheck disable=SC2013
for x in $(cat /proc/cmdline); do
	case $x in
	init=*)
		init=${x#init=}
		;;
	root=*)
		ROOT=${x#root=}
		if [ -z "${BOOT}" ] && [ "$ROOT" = "/dev/nfs" ]; then
			BOOT=nfs
		fi
		;;
	rootflags=*)
		ROOTFLAGS="-o ${x#rootflags=}"
		;;
	rootfstype=*)
		ROOTFSTYPE="${x#rootfstype=}"
		;;
	rootdelay=*)
		ROOTDELAY="${x#rootdelay=}"
		case ${ROOTDELAY} in
		*[![:digit:].]*)
			ROOTDELAY=
			;;
		esac
		;;
	roottimeout=*)
		ROOTDELAY="${x#roottimeout=}"
		case ${ROOTDELAY} in
		*[![:digit:].]*)
			ROOTDELAY=
			;;
		esac
		;;
	loop=*)
		# shellcheck disable=SC2034
		LOOP="${x#loop=}"
		;;
	loopflags=*)
		# shellcheck disable=SC2034
		LOOPFLAGS="-o ${x#loopflags=}"
		;;
	loopfstype=*)
		# shellcheck disable=SC2034
		LOOPFSTYPE="${x#loopfstype=}"
		;;
	nfsroot=*)
		# shellcheck disable=SC2034
		NFSROOT="${x#nfsroot=}"
		;;
	initramfs.runsize=*)
		RUNSIZE="${x#initramfs.runsize=}"
		;;
	ip=*)
		IP="${x#ip=}"
		;;
	ip6=*)
		IP6="${x#ip6=}"
		;;
	vlan=*)
		VLAN="${x#vlan=}"
		;;
	boot=*)
		BOOT=${x#boot=}
		;;
	ubi.mtd=*)
		UBIMTD=${x#ubi.mtd=}
		;;
	resume=*)
		RESUME="${x#resume=}"
		case $RESUME in
		UUID=*)
			RESUME="/dev/disk/by-uuid/${RESUME#UUID=}"
		esac
		;;
	resume_offset=*)
		resume_offset="${x#resume_offset=}"
		;;
	noresume)
		noresume=y
		;;
	drop_capabilities=*)
		drop_caps="-d ${x#drop_capabilities=}"
		;;
	panic=*)
		panic="${x#panic=}"
		;;
	ro)
		readonly=y
		;;
	rw)
		readonly=n
		;;
	debug)
		debug=y
		quiet=n
		if [ -n "${netconsole}" ]; then
			log_output=/dev/kmsg
		else
			log_output=/run/initramfs/initramfs.debug
		fi
		set -x
		;;
	debug=*)
		debug=y
		quiet=n
		set -x
		;;
	break=*)
		break=${x#break=}
		;;
	break)
		break=premount
		;;
	blacklist=*)
		blacklist=${x#blacklist=}
		;;
	netconsole=*)
		netconsole=${x#netconsole=}
		[ "$debug" = "y" ] && log_output=/dev/kmsg
		;;
	BOOTIF=*)
		BOOTIF=${x#BOOTIF=}
		;;
	hwaddr=*)
		BOOTIF=${x#hwaddr=}
		;;
	fastboot|fsck.mode=skip)
		fastboot=y
		;;
	forcefsck|fsck.mode=force)
		forcefsck=y
		;;
	fsckfix|fsck.repair=yes)
		fsckfix=y
		;;
	fsck.repair=no)
		fsckfix=n
		;;
	esac
done

# Default to BOOT=local if no boot script defined.
if [ -z "${BOOT}" ]; then
	BOOT=local
fi

if [ -n "${noresume}" ] || [ "$RESUME" = none ]; then
	noresume=y
else
	resume=${RESUME:-}
fi

mount -t tmpfs -o "nodev,noexec,nosuid,size=${RUNSIZE:-10%},mode=0755" tmpfs /run
mkdir -m 0700 /run/initramfs

if [ -n "$log_output" ]; then
	exec >$log_output 2>&1
	unset log_output
fi

maybe_break top

# Don't do log messages here to avoid confusing graphical boots
run_scripts /scripts/init-top

maybe_break modules
[ "$quiet" != "y" ] && log_begin_msg "Loading essential drivers"
[ -n "${netconsole}" ] && modprobe netconsole netconsole="${netconsole}"
load_modules
[ "$quiet" != "y" ] && log_end_msg

starttime="$(_uptime)"
starttime=$((starttime + 1)) # round up
export starttime

maybe_break premount
[ "$quiet" != "y" ] && log_begin_msg "Running /scripts/init-premount"
run_scripts /scripts/init-premount
[ "$quiet" != "y" ] && log_end_msg

maybe_break mount
log_begin_msg "Mounting root file system"
# Always load local and nfs (since these might be needed for /etc or
# /usr, irrespective of the boot script used to mount the rootfs).
. /scripts/local
. /scripts/nfs
. /scripts/${BOOT}
parse_numeric "${ROOT}"
maybe_break mountroot
mount_top
mount_premount
mountroot
log_end_msg

if read_fstab_entry /usr; then
	log_begin_msg "Mounting /usr file system"
	mountfs /usr
	log_end_msg
fi

# Mount cleanup
mount_bottom
nfs_bottom
local_bottom

maybe_break bottom
[ "$quiet" != "y" ] && log_begin_msg "Running /scripts/init-bottom"
# We expect udev's init-bottom script to move /dev to ${rootmnt}/dev
run_scripts /scripts/init-bottom
[ "$quiet" != "y" ] && log_end_msg

# Move /run to the root
mount -n -o move /run ${rootmnt}/run

validate_init() {
	run-init -n "${rootmnt}" "${1}"
}

# Check init is really there
if ! validate_init "$init"; then
	echo "Target filesystem doesn't have requested ${init}."
	init=
	for inittest in /sbin/init /etc/init /bin/init /bin/sh; do
		if validate_init "${inittest}"; then
			init="$inittest"
			break
		fi
	done
fi

# No init on rootmount
if ! validate_init "${init}" ; then
	panic "No init found. Try passing init= bootarg."
fi

maybe_break init

# don't leak too much of env - some init(8) don't clear it
# (keep init, rootmnt, drop_caps)
unset debug
unset MODPROBE_OPTIONS
unset DPKG_ARCH
unset ROOTFLAGS
unset ROOTFSTYPE
unset ROOTDELAY
unset ROOT
unset IP
unset IP6
unset VLAN
unset BOOT
unset BOOTIF
unset DEVICE
unset UBIMTD
unset blacklist
unset break
unset noresume
unset panic
unset quiet
unset readonly
unset resume
unset resume_offset
unset noresume
unset fastboot
unset forcefsck
unset fsckfix
unset starttime

# Move virtual filesystems over to the real filesystem
mount -n -o move /sys ${rootmnt}/sys
mount -n -o move /proc ${rootmnt}/proc

# Chain to real filesystem
# shellcheck disable=SC2086,SC2094
exec run-init ${drop_caps} "${rootmnt}" "${init}" "$@" <"${rootmnt}/dev/console" >"${rootmnt}/dev/console" 2>&1
echo "Something went badly wrong in the initramfs."
panic "Please file a bug on initramfs-tools."
```
