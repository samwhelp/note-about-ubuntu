---
title: 如何簡易安裝「fcitx5-table-boshiamy」
nav_order: 3151
has_children: false
parent: fcitx5
grand_parent: 中文輸入法
---


# 如何簡易安裝「fcitx5-table-boshiamy」


## Demo

| Demo |
| --- |
| [fcitx5-table-boshiamy](https://github.com/samwhelp/demo-forum-case/tree/main/demo/fcitx5-table-extra-each/fcitx5-table-boshiamy/start) |


## 操作步驟


### prepare

執行下面指令

``` sh
sudo apt-get install wget libime-bin fcitx5-chinese-addons
```

安裝下面幾個過程中需要的「Package」

* [wget](https://packages.ubuntu.com/jammy/wget)
* [libime-bin](https://packages.ubuntu.com/jammy/libime-bin)
* [fcitx5-chinese-addons](https://packages.ubuntu.com/jammy/fcitx5-chinese-addons)


### download

執行下面指令，下載「[boshiamy.txt](https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt)」

``` sh
wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.txt
```

執行下面指令，下載「[boshiamy.conf.in](https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.conf.in)」

```
wget -c https://raw.githubusercontent.com/fcitx/fcitx5-table-extra/master/tables/boshiamy.conf.in
```

> 這兩個檔案，可以在「fcitx5-table-extra / [tables](https://github.com/fcitx/fcitx5-table-extra/tree/master/tables)」找到。


### compile

執行下面指令，

```
libime_tabledict boshiamy.txt boshiamy.main.dict
```

> 關於「libime_tabledict」這個「指令」是屬於「[libime-bin](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/fcitx5/package/libime-bin.html)」這個「Package」。


### install

執行下面指令，將「`boshiamy.main.dict`」安裝到「`/usr/share/fcitx5/table/boshiamy.main.dict`」這個路徑。

``` sh
sudo install -Dm644 boshiamy.main.dict "/usr/share/fcitx5/table/boshiamy.main.dict"
```

執行下面指令，將「`boshiamy.conf.in`」安裝到「`/usr/share/fcitx5/inputmethod/boshiamy.conf`」這個路徑。

``` sh
sudo install -Dm644 boshiamy.conf.in "/usr/share/fcitx5/inputmethod/boshiamy.conf"
```

以上的步驟，就將「fcitx5-boshiamy」簡易安裝完成了，

接著就可以到「fcitx5」的設定介面，去設定加入「boshiamy」。


> 關於「icons」是「非必要」，所以這裡就先忽略，不安裝。請參考「[另一個討論回覆](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364434#forumpost364434)」。


## 相關討論


### Ubuntu與嘸蝦米: 在fcitx下，(boshiamy)嘸蝦米的使用最為順暢、穩定!（新酷音、m17n、倉頡、輕鬆法亦適用）

* 「[#42](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=364428#forumpost364428)」 - 如何簡易安裝「fcitx5-table-boshiamy」 (嘸蝦米輸入法)


### Ubuntu 22.04 LTS (Jammy Jellyfish) Released

* 「[#20](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=363750#forumpost363750)」- 如何編譯「fcitx5-table-extra」並且打包成多個「Debian Package」
