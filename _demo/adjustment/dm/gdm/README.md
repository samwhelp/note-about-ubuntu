
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


run

``` sh
sudo su
```

run

``` sh
cd /var/lib/gdm3
```

run

``` sh
ls -a1
```

show 

```
.
..
.cache
.config
greeter-dconf-defaults
.local
```

run 

``` sh
cd .config/dconf
```

or run

```
cd /var/lib/gdm3/.config/dconf
```

run

```
ls -a1
```

show

```
.
..
user
```

run

``` sh
sudo -u gdm dbus-launch dconf dump /
```

show

```
No protocol specified
[org/gnome/desktop/interface]
gtk-im-module='gtk-im-context-simple'
```

run

``` sh
grep -a 'gtk-im-context-simple' user
```

or run

```
sudo grep -a 'gtk-im-context-simple' /var/lib/gdm3/.config/dconf/user
```

show


```
L$(org/gtk-im-modulegtk-im-context-simples/gnome/desktop/interface/
```


* https://wiki.archlinux.org/title/GDM#Changing_the_cursor_theme

run

``` sh
sudo -u gdm dbus-launch gsettings get org.gnome.desktop.interface cursor-theme
```

show

```
No protocol specified
'Adwaita'
```


run

``` sh
sudo -u gdm dbus-launch gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
```

show

```
No protocol specified
```

run

``` sh
sudo -u gdm dbus-launch gsettings get org.gnome.desktop.interface cursor-theme
```

show

```
No protocol specified
'Breeze'
```


run

``` sh
gsettings get org.gnome.desktop.interface cursor-theme
```

show

```
'Adwaita'
```


run

``` sh
sudo -u gdm dbus-launch dconf dump /
```

show

```
No protocol specified
[org/gnome/desktop/interface]
cursor-theme='Breeze'
gtk-im-module='gtk-im-context-simple'
```

run

```
sudo grep -a 'Breeze' /var/lib/gdm3/.config/dconf/user
```

show

```
LHP��$0PLX\org//cursor-themeBreezesgtk-im-modulegtk-im-context-simplesdesktop/interface/gnome/
```

run

``` sh
sudo -u gdm dbus-launch gsettings reset org.gnome.desktop.interface cursor-theme
```


show

```
No protocol specified
```

run

``` sh
sudo -u gdm dbus-launch gsettings get org.gnome.desktop.interface cursor-theme
```


show

```
No protocol specified
'Adwaita'
```


run

``` sh
sudo -u gdm dbus-launch dconf dump /
```

show

```
No protocol specified
[org/gnome/desktop/interface]
gtk-im-module='gtk-im-context-simple'
```



### gdm / dconf db

* /var/lib/gdm3/.config/dconf/user
* `sudo -u gdm dbus-launch dconf dump /`

### login user / dconf db

* ~/.config/dconf/user
* `dconf dump /`


run

``` sh
grep 'org/gnome/desktop/interface' /usr/share/glib-2.0/schemas/* -R
```

show

```
grep: /usr/share/glib-2.0/schemas/gschemas.compiled: binary file matches
/usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml:  <schema id="org.gnome.desktop.interface" path="/org/gnome/desktop/interface/">
```

run

``` sh
grep 'cursor-theme' /usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml
```

show

``` xml
    <key name="cursor-theme" type="s">
      <default>'Adwaita'</default>
      <summary>Cursor theme</summary>
      <description>Cursor theme name. Used only by Xservers that support the Xcursor extension.</description>
    </key>
```