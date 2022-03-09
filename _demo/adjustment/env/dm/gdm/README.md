
# gdm


## Link

* https://wiki.archlinux.org/title/GDM
* https://wiki.debian.org/GDM
* https://wiki.gnome.org/Projects/GDM
* https://help.gnome.org/admin/gdm/
* https://www.rocksaying.tw/archives/19886616.html
* https://wiki.archlinux.org/title/HiDPI#GNOME


## Xsession

* https://wiki.archlinux.org/title/GDM#Automatic_login

run

``` sh
sudo ls -1 /var/lib/AccountsService/users/
```

show

```
gdm
sam
```

run

``` sh
sudo cat /var/lib/AccountsService/users/gdm
```

show

```
[User]
Icon=/var/lib/gdm3/.face
SystemAccount=true
```


run

```
sudo cat /var/lib/AccountsService/users/$(id -un)
```


```
[InputSource0]
xkb=us

[User]
Icon=/home/sam/.face
SystemAccount=false
```


run

``` sh
ls /usr/share/xsessions/ -1
```

show

```
lxqt.desktop
openbox.desktop
ubuntu.desktop
ubuntu-xorg.desktop
xfce.desktop
```


## dconf and gsetting

* https://wiki.archlinux.org/title/GDM#dconf_configuration

run

``` sh
ls -d /var/lib/gdm3 -al
```

show

```
drwx--x--x 5 gdm gdm 4096 Mar  9 19:07 /var/lib/gdm3
```

run

``` sh
ls /var/lib/gdm3 -al
```

show

```
total 28
drwx--x--x  5 gdm  gdm  4096 Mar  9 19:07 .
drwxr-xr-x 67 root root 4096 Mar  7 12:58 ..
drwx------  9 gdm  gdm  4096 Mar  9 19:02 .cache
drwxr-xr-x  7 gdm  gdm  4096 Mar  6 20:42 .config
-rw-r--r--  1 gdm  gdm  4444 Mar  9 19:07 greeter-dconf-defaults
drwxr-xr-x  4 gdm  gdm  4096 Mar  6 20:41 .local
```



