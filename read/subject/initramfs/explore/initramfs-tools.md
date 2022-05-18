---
title: initramfs-tools
nav_order: 5011
has_children: false
parent: 探索
grand_parent: initramfs
---


# initramfs-tools

執行

``` sh
dpkg -L initramfs-tools
```

顯示

```
/.
/etc
/etc/initramfs-tools
/etc/initramfs-tools/conf.d
/etc/initramfs-tools/update-initramfs.conf
/etc/kernel
/etc/kernel/postinst.d
/etc/kernel/postinst.d/initramfs-tools
/etc/kernel/postrm.d
/etc/kernel/postrm.d/initramfs-tools
/usr
/usr/sbin
/usr/sbin/update-initramfs
/usr/share
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/update-initramfs
/usr/share/bug
/usr/share/bug/initramfs-tools
/usr/share/bug/initramfs-tools/script
/usr/share/doc
/usr/share/doc/initramfs-tools
/usr/share/doc/initramfs-tools/TODO
/usr/share/doc/initramfs-tools/copyright
/usr/share/lintian
/usr/share/lintian/overrides
/usr/share/lintian/overrides/initramfs-tools
/usr/share/man
/usr/share/man/man5
/usr/share/man/man5/update-initramfs.conf.5.gz
/usr/share/man/man8
/usr/share/man/man8/update-initramfs.8.gz
/usr/share/doc/initramfs-tools/NEWS.Debian.gz
/usr/share/doc/initramfs-tools/changelog.gz
```

## bin

執行

``` sh
dpkg -L initramfs-tools | grep 'bin/'
```

顯示

```
/usr/sbin/update-initramfs
```

執行

``` sh
file /usr/sbin/update-initramfs
```

顯示

```
/usr/sbin/update-initramfs: POSIX shell script, ASCII text executable
```

## man


執行

``` sh
dpkg -L initramfs-tools | grep '/man/man.*/'
```

顯示

```
/usr/share/man/man5/update-initramfs.conf.5.gz
/usr/share/man/man8/update-initramfs.8.gz
```

* $ man [update-initramfs.conf](http://manpages.ubuntu.com/manpages/jammy/en/man5/update-initramfs.conf.5.html)
* $ man [update-initramfs](http://manpages.ubuntu.com/manpages/jammy/en/man8/update-initramfs.8.html)


## /etc/initramfs-tools/update-initramfs.conf

執行

``` sh
cat /etc/initramfs-tools/update-initramfs.conf
```

顯示

```
#
# Configuration file for update-initramfs(8)
#

#
# update_initramfs [ yes | all | no ]
#
# Default is yes
# If set to all update-initramfs will update all initramfs
# If set to no disables any update to initramfs beside kernel upgrade

update_initramfs=yes

#
# backup_initramfs [ yes | no ]
#
# Default is no
# If set to no leaves no .bak backup files.

backup_initramfs=no
```
