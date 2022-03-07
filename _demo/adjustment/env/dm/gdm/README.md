
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
