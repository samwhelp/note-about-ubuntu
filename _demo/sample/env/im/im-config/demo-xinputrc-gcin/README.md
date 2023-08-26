
# demo-xinputrc-gcin


## Manpage

* [man im-config](https://manpages.ubuntu.com/manpages/jammy/en/man8/im-config.8.html)


## Command

run

``` sh
im-config -n gcin
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
cat /usr/share/im-config/data/26_gcin.rc
```

show

``` sh

```


run

``` sh
cat /usr/share/im-config/data/26_gcin.conf
```

show

``` sh

```
