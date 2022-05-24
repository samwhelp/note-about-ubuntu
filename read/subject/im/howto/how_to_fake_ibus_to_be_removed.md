---
title: How to fake ibus to be removed
nav_order: 3910
has_children: false
parent: Howto
grand_parent: 中文輸入法
---


# How to fake ibus to be removed





## 前提

因為在「GNOME」的桌面環境，包含「GNOME Shell」或是「GNOME Flashback」。

有整合「ibus」，所以會自動啟動「/usr/bin/ibus-daemon」，

若是採用其他輸入法框架，就會同時啟動，

這時有可能衝突，導致輸入法無法正常運作，

這時候有幾個解法，

## 解法一

第一種是移除「ibus」，

但是有可能發生一種狀況，就是有些套件，可能是桌面環境，

是依賴「ibus」，這時候移除「ibus」，就會連同移除相關的套件。

所以執行下面指令，移除「ibus」

``` sh
sudo apt-get remove ibus
```

會先出現一些提示訊息，先別著急著按下「Enter」，

先看清除會不會連同移除其他的套件。


## 解法二

因為「GNOME」的實作程式碼，是檢查「/usr/bin/ibus-daemon」是否存在，

若存在，就會自動執行「/usr/bin/ibus-daemon」。

所以只要把「/usr/bin/ibus-daemon」移到別處，就可以解決這個問題。

``` sh
sudo mv /usr/bin/ibus-daemon /usr/bin/ibus-daemon.distrib
```

若要移回來，則是執行下面的指令

``` sh
sudo mv /usr/bin/ibus-daemon.distrib /usr/bin/ibus-daemon
```

不過在「[How to fake ibus to be removed](https://wiki.debian.org/InputMethodBuster#How_to_fake_ibus_to_be_removed)」這篇，

看到一個比較保險的作法，

### 設定

執行

``` sh
sudo dpkg-divert --package im-config --rename /usr/bin/ibus-daemon
```

顯示

```
Adding 'diversion of /usr/bin/ibus-daemon to /usr/bin/ibus-daemon.distrib by im-config'
```

### 確認

執行

``` sh
file /usr/bin/ibus-daemon
```

顯示

```
/usr/bin/ibus-daemon: cannot open `/usr/bin/ibus-daemon' (No such file or directory)
```

執行

``` sh
file /usr/bin/ibus-daemon.distrib
```

顯示

```
/usr/bin/ibus-daemon.distrib: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=7fcc6f12def48a90f287cc722d60da179af3b6f7, for GNU/Linux 3.2.0, stripped
```

執行

``` sh
dpkg -S /usr/bin/ibus-daemon
```

顯示

```
diversion by im-config from: /usr/bin/ibus-daemon
diversion by im-config to: /usr/bin/ibus-daemon.distrib
ibus: /usr/bin/ibus-daemon
```

### 恢復


執行

``` sh
sudo dpkg-divert --package im-config --rename --remove /usr/bin/ibus-daemon
```

顯示

```
Removing 'diversion of /usr/bin/ibus-daemon to /usr/bin/ibus-daemon.distrib by im-config'
```


## 相關文件

* Debian Wiki / [InputMethodBuster](https://wiki.debian.org/InputMethodBuster) / [How to fake ibus to be removed](https://wiki.debian.org/InputMethodBuster#How_to_fake_ibus_to_be_removed)
