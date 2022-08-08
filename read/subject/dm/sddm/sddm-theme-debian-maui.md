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


### --get-selections

執行

``` sh
update-alternatives --get-selections | grep sddm
```

顯示

```
sddm-ubuntu-theme              auto     /usr/share/sddm/themes/debian-maui
```

### --query

執行下面指令

``` sh
update-alternatives --query sddm-ubuntu-theme
```

顯示

```
update-alternatives --query sddm-ubuntu-theme
Name: sddm-ubuntu-theme
Link: /usr/share/sddm/themes/ubuntu-theme
Status: auto
Best: /usr/share/sddm/themes/debian-maui
Value: /usr/share/sddm/themes/debian-maui

Alternative: /usr/share/sddm/themes/debian-maui
Priority: 40
```


### --display

執行下面指令

``` sh
update-alternatives --display sddm-ubuntu-theme
```

顯示

```
sddm-ubuntu-theme - auto mode
  link best version is /usr/share/sddm/themes/debian-maui
  link currently points to /usr/share/sddm/themes/debian-maui
  link sddm-ubuntu-theme is /usr/share/sddm/themes/ubuntu-theme
/usr/share/sddm/themes/debian-maui - priority 40
```

### --list

執行

``` sh
update-alternatives --list sddm-ubuntu-theme
```

顯示

```
/usr/share/sddm/themes/debian-maui
```

### /usr/share/sddm/themes/ubuntu-theme

執行

``` sh
file /usr/share/sddm/themes/ubuntu-theme
```

顯示

```
/usr/share/sddm/themes/ubuntu-theme: symbolic link to /etc/alternatives/sddm-ubuntu-theme
```

### /etc/alternatives/sddm-ubuntu-theme

執行

``` sh
file /etc/alternatives/sddm-ubuntu-theme
```

顯示

```
/etc/alternatives/sddm-ubuntu-theme: symbolic link to /usr/share/sddm/themes/debian-maui
```


## 如何探索

* [如何探索 Ubuntu](https://samwhelp.github.io/book-ubuntu-qna/read/howto/explore/)


### control-path

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

### postinst

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

或是也可以執行「`dpkg-query --control-show sddm-theme-debian-maui postinst`」，就可以看到上面的內容


### prerm

執行

``` sh
cat /var/lib/dpkg/info/sddm-theme-debian-maui.prerm
```

顯示

```
#!/bin/sh
set -e

if [ "$1" = "remove" ] || [ "$1" = "deconfigure" ]; then
    update-alternatives --remove \
        sddm-ubuntu-theme \
        /usr/share/sddm/themes/debian-maui
fi

# Tag to allow some debhelper commands to inject relevant code
```

或是也可以執行「`dpkg-query --control-show sddm-theme-debian-maui prerm`」，就可以看到上面的內容
