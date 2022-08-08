---
title: sddm-theme-debian-maui
nav_order: 4211
has_children: false
parent: sddm
grand_parent: XDM
---


# sddm-theme-debian-maui


## Package

* [sddm-theme-debian-maui](https://packages.ubuntu.com/jammy/sddm-theme-debian-maui)

> 安裝「sddm」，也會伴隨安裝「[sddm-theme-debian-maui](https://packages.ubuntu.com/jammy/sddm-theme-debian-maui)」。


## update-alternatives

執行

``` sh
cat /var/lib/dpkg/info/sddm-theme-debian-maui.postinst
```

顯示

```
#!/bin/sh
set -e

if [ "$1" = "configure" ] || [ "$1" = "abort-upgrade" ] || [ "$1" = "abort-remove" ]; then
    update-alternatives --install \
        /usr/share/sddm/themes/ubuntu-theme \
        sddm-ubuntu-theme \
        /usr/share/sddm/themes/debian-maui 40
fi

# Tag to allow some debhelper commands to inject relevant code
```

或是也可以執行「`dpkg-query --control-show sddm-theme-debian-maui postinst`」

## 探索

* [如何探索 Ubuntu](https://samwhelp.github.io/book-ubuntu-qna/read/howto/explore/)

執行

``` sh
dpkg-query --control-path sddm-theme-debian-maui
```

顯示

```
/var/lib/dpkg/info/sddm-theme-debian-maui.prerm
/var/lib/dpkg/info/sddm-theme-debian-maui.md5sums
/var/lib/dpkg/info/sddm-theme-debian-maui.postinst
```

執行

``` sh
ls /var/lib/dpkg/info/sddm-theme-debian-maui*
```

顯示

```
/var/lib/dpkg/info/sddm-theme-debian-maui.list
/var/lib/dpkg/info/sddm-theme-debian-maui.md5sums
/var/lib/dpkg/info/sddm-theme-debian-maui.postinst
/var/lib/dpkg/info/sddm-theme-debian-maui.prerm
```
