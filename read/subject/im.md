---
title: 中文輸入法
nav_order: 3000
has_children: true
---


# 中文輸入法

## 切換指令

| 輸入法框架 | 切換指令 | 設定檔路徑 |
| --- | --- | --- |
| [fcitx5](#fcitx5) | `im-config -n fcitx5` | [~/.xinputrc](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/sample/env/im/im-config/demo-xinputrc-fcitx5/asset/overlay/etc/skel/.xinputrc) |
| [ibus](#ibus) | `im-config -n ibus` | [~/.xinputrc](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/sample/env/im/im-config/demo-xinputrc-ibus/asset/overlay/etc/skel/.xinputrc) |
| [gcin](#gcin) | `im-config -n gcin` | [~/.xinputrc](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/sample/env/im/im-config/demo-xinputrc-gcin/asset/overlay/etc/skel/.xinputrc) |
| [hime](#hime) | `im-config -n hime` | [~/.xinputrc](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/sample/env/im/im-config/demo-xinputrc-hime/asset/overlay/etc/skel/.xinputrc) |

> $ man [im-config](https://manpages.ubuntu.com/manpages/jammy/en/man8/im-config.8.html)


## fcitx5

| 模組 | 輸入法 |
| --- | --- |
| [fcitx5-chewing](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/fcitx5/fcitx5-chewing.html) | 新酷音輸入法 |
| [fcitx5-mcbopomofo](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/fcitx5/fcitx5-mcbopomofo.html) | 小麥注音輸入法 |
| [fcitx5-table-boshiamy](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/fcitx5/howto/install-fcitx5-table-boshiamy.html) | 嘸蝦米輸入法 |
| [fcitx5-table-easy-large](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/fcitx5/howto/install-fcitx5-table-easy-large.html) | 輕鬆輸入法 |


## ibus

| 模組 | 輸入法 |
| --- | --- |
| [ibus-chewing](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/ibus/ibus-chewing.html) | 新酷音輸入法 |


### switch-input-source

在「gnome-shell」內建有整合「ibus」，

請參考「[switch-input-source](https://samwhelp.github.io/note-about-ubuntu/read/flavours/ubuntu/adjustment/switch-input-source.html)」這篇的說明。


## gcin

| 輸入法 |
| --- |
| [gcin](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/gcin.html) |


## hime

| 輸入法 |
| --- |
| [hime](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/hime.html) |


## 相關文件

* Debian Wiki / [InputMethodBuster](https://wiki.debian.org/InputMethodBuster) / [How to fake ibus to be removed](https://wiki.debian.org/InputMethodBuster#How_to_fake_ibus_to_be_removed)

> [若ibus同時存在，如何解決？](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/howto/how_to_fake_ibus_to_be_removed.html)
