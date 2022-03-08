---
title: Locale 切換
nav_order: 5002
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# locale 切換

## 參考文章

* Ubuntu Community Help Wiki / [Locale](https://help.ubuntu.com/community/Locale)
* Debian Wiki / [Locale](https://wiki.debian.org/Locale)


## 微調腳本

* [微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/locale)


## 設定檔路徑

* /etc/default/locale


## 前提

安裝完成後，一開始「[/etc/default/locale](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/locale/asset/lzh_TW/locale)」的內容如下

```
#  File generated by update-locale
LANG="en_US.UTF-8"
LC_NUMERIC="lzh_TW"
LC_TIME="lzh_TW"
LC_MONETARY="lzh_TW"
LC_PAPER="lzh_TW"
LC_NAME="lzh_TW"
LC_ADDRESS="lzh_TW"
LC_TELEPHONE="lzh_TW"
LC_MEASUREMENT="lzh_TW"
LC_IDENTIFICATION="lzh_TW"
```

## 操作說明

## locale-gen

執行下面指令

``` sh
sudo locale-gen zh_TW zh_TW.UTF-8 zh_CN.UTF-8 en_US.UTF-8
```

> [範例腳本](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/locale/locale-gen.sh)

顯示如下

```
Generating locales (this might take a while)...
  en_US.UTF-8... done
  zh_CN.UTF-8... done
  zh_TW.BIG5... done
  zh_TW.UTF-8... done
Generation complete.
```


### 切換成「英文界面」

修改「/etc/default/locale」這個檔案，改成如下的內容

```
LANG="en_US.UTF-8"
```

或是直接執行下面指令，修改「/etc/default/locale」這個檔案

``` sh
sudo sh -c 'echo "LANG=\"en_US.UTF-8\"" > /etc/default/locale'
```

> [範例腳本](https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/adjustment/env/locale/en_us-install.sh)

> 我個人慣用「英文界面」，所以我會採用這個設定。

> 若是使用「lightdm」，登入時也可以選擇不同語系顯示界面。


### 切換成「中文界面」

修改「/etc/default/locale」這個檔案，改成如下的內容

```
LANG="zh_TW.UTF-8"
```

或是直接執行下面指令，修改「/etc/default/locale」這個檔案

``` sh
sudo sh -c 'echo "LANG=\"zh_TW.UTF-8\"" > /etc/default/locale'
```

> [範例腳本](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/locale/zh_tw-install.sh)


### 其他方式

或是也可以善用下面的指令來操作。

``` sh
sudo dpkg-reconfigure locales
```