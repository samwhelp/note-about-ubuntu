---
title: libime_tabledict
nav_order: 3141
has_children: false
parent: fcitx5
grand_parent: 中文輸入法
---


# libime_tabledict


## From Package

* [libime-bin](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/fcitx5/package/libime-bin.html)


## GitHub

* [libime](https://github.com/fcitx/libime)


## Demo

| Demo |
| --- |
| [fcitx5-table-extra-each](https://github.com/samwhelp/demo-forum-case/tree/main/demo/fcitx5-table-extra-each) |


## 如何安裝

執行下面指令，安裝「Package: [libime-bin](https://packages.ubuntu.com/jammy/libime-bin)」

``` sh
sudo apt-get install libime-bin
```


## 使用範例


### help

執行

``` sh
libime_tabledict -h
```

顯示

```
Usage: libime_tabledict [-du] <source> <dest>
-d: Dump binary to text
-u: User dict
-h: Show this help
```


### boshiamy.txt

先執行下面指令，下載「boshiamy.txt」

``` sh
wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt
```


### compile

執行下面指令，將「boshiamy.txt」，compile 成「boshiamy.main.dict」

``` sh
libime_tabledict boshiamy.txt boshiamy.main.dict
```

### dump

``` sh
接著執行下面指令，將「boshiamy.main.dict」，dump 成「dump-boshiamy.txt」
```

## 相關討論

### Ubuntu與嘸蝦米: 在fcitx下，(boshiamy)嘸蝦米的使用最為順暢、穩定!（新酷音、m17n、倉頡、輕鬆法亦適用）

* 「[#40](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364424#forumpost364424)」 - 在「fcitx5」，如何編譯「boshiamy.txt」
