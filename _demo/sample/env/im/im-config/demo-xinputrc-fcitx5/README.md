
# demo-xinputrc-fcitx5


## Manpage

* [man im-config](https://manpages.ubuntu.com/manpages/jammy/en/man8/im-config.8.html)


## Command

run

``` sh
im-config -n fcitx5
```


## Config File Path

| Config File Path |
| --- |
| [~/.xinputrc](./asset/overlay/etc/skel/.xinputrc) |


## Explore / im-config / data

run

``` sh
ls -1 /usr/share/im-config/data/
```

show

```
00_default.conf
00_default.rc
01_auto.conf
01_auto.rc
02_cjkv.conf
02_cjkv.rc
09_REMOVE.conf
09_REMOVE.rc
21_ibus.conf
21_ibus.rc
22_fcitx.conf
22_fcitx.rc
23_fcitx5.conf
23_fcitx5.rc
24_uim.conf
24_uim.rc
25_hime.conf
25_hime.rc
26_gcin.conf
26_gcin.rc
30_maliit.conf
30_maliit.rc
48_scim.conf
48_scim.rc
60_thai.conf
60_thai.rc
78_none.conf
78_none.rc
79_xim.conf
79_xim.rc
80_kinput2.conf
80_kinput2.rc
80_xsunpinyin.conf
80_xsunpinyin.rc
90_bogus.conf
90_bogus.rc
90_custom.conf
90_custom.rc
90_missing.conf
90_missing.rc
```

run

``` sh
cat /usr/share/im-config/data/23_fcitx5.rc
```

show

``` sh
# start fcitx5
# vim: set sts=4 expandtab:

if [ "$IM_CONFIG_PHASE" = 2 ]; then
    # start fcitx5 daemon
    /usr/bin/fcitx5 -d 2> /dev/null
fi


if [ "$IM_CONFIG_PHASE" = 1 ]; then
# set variables for the plain XIM
XMODIFIERS=@im=fcitx

# Let's assume all required modules are installed
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
CLUTTER_IM_MODULE=xim
# See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1008481#40
SDL_IM_MODULE=fcitx

fi
# start fcitx5
# vim: set sts=4 expandtab:

if [ "$IM_CONFIG_PHASE" = 2 ]; then
    # start fcitx5 daemon
    /usr/bin/fcitx5 -d 2> /dev/null
fi


if [ "$IM_CONFIG_PHASE" = 1 ]; then
# set variables for the plain XIM
XMODIFIERS=@im=fcitx

# Let's assume all required modules are installed
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
CLUTTER_IM_MODULE=xim
# See https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=1008481#40
SDL_IM_MODULE=fcitx

fi
```


run

``` sh
cat /usr/share/im-config/data/23_fcitx5.conf
```

show

``` sh
# vim: set sts=4 expandtab:
IM_CONFIG_SHORT="$(gettext "activate Flexible Input Method Framework v5 (fcitx5)")"

IM_CONFIG_LONG="$(gettext "Flexible Input Method Framework v5 (fcitx5)
 * Required for all: fcitx5
 * Language specific input conversion support:
   * Simplified Chinese: fcitx5-chinese-addons
   * Traditional Chinese / generic Chinese: fcitx5-rime
   * Generic keyboard translation table: fcitx5-keyman or fcitx5-table
 * Application platform support:
   Installing recommended packages of fcitx5 will cover all GUI platforms.
   * GNOME/GTK: fcitx5-frontend-gtk3 and fcitx5-frontend-gtk4
   * KDE/Qt5: fcitx5-frontend-qt5 and kde-config-fcitx5")"

package_auto () {
    package_status fcitx5
}

package_menu () {
    package_status fcitx5
}
```
