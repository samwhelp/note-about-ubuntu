

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


## Link

* https://wiki.archlinux.org/title/GDM
* https://wiki.debian.org/GDM
* https://wiki.gnome.org/Projects/GDM
* https://help.gnome.org/admin/gdm/
* https://www.rocksaying.tw/archives/19886616.html
* https://wiki.archlinux.org/title/HiDPI#GNOME

