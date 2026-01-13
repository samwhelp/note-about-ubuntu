---
title: 如何改回使用「gnu-coreutils」
nav_order: 7010
has_children: false
parent: 如何
---


# 如何改回使用「gnu-coreutils」




## 主題

* [前提](#前提)
* [操作步驟](#操作步驟)
* [參考文章](#參考文章)
* [相關討論](#相關討論)




## 前提

由於「[Ubuntu 25.10 Questing Quokka](https://canonical.com/blog/canonical-releases-ubuntu-25-10-questing-quokka)」改採用「[uutils-coreutils](https://github.com/uutils/coreutils)」，

不過使用上，我遇到一些問題，感覺一些功能，還沒有和「`gnu-coreutils`」一致，一些我常用的指令操作後，沒有我原本預期的結果。

我個人還是習慣使用「`gnu-coreutils`」，所以就探尋了如何改回使用「`gnu-coreutils`」的方法。

簡單紀錄如下：




## 操作步驟

### 事前檢測

執行

``` sh
ls --version
```

顯示

```
ls (uutils coreutils) 0.2.2
```

執行

``` sh
cp --version
```

檢視

```
cp (GNU coreutils) 9.5
Copyright (C) 2024 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Torbjörn Granlund, David MacKenzie, and Jim Meyering.


```




## 主要指令

**我參考[這篇文章](https://discourse.ubuntu.com/t/migration-to-rust-coreutils-in-25-10/59708#p-153366-revert-mechanism)提到的，執行下面指令，就會改回使用「gnu-coreutils」。**

``` sh
sudo apt install coreutils-from-gnu coreutils-from-uutils- --allow-remove-essential
```

顯示

```
Installing:
  coreutils-from-gnu

REMOVING:
  coreutils-from-uutils

WARNING: The following essential packages will be removed.
This should NOT be done unless you know exactly what you are doing!
  coreutils-from-uutils

Summary:
  Upgrading: 0, Installing: 1, Removing: 1, Not Upgrading: 0
  Download size: 6,748 B
  Freed space: 2,048 B

Continue? [Y/n]
```

按下「`Enter`」，確定執行。




### 再次確認

執行

``` sh
ls --version
```

顯示

```
ls (GNU coreutils) 9.5
Copyright (C) 2024 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Richard M. Stallman and David MacKenzie.
```

確認已經改回使用「`GNU coreutils`」。




## 參考文章

| 參考文章 |
| ------- |
| Migration to rust-coreutils in 25.10 / [ Revert mechanism](https://discourse.ubuntu.com/t/migration-to-rust-coreutils-in-25-10/59708#p-153366-revert-mechanism) |




## 相關討論

| 相關討論 |
| ------- |
| GitHub / ubuntu-iso-builder-template / issue / [gnu-coreutils/dirname and uutils-coreutils/dirname handles paths ending in "/." differently. ](https://github.com/samwhelp/ubuntu-iso-builder-template/issues/2) |
| GitHub / ubuntu-iso-builder-template / issue / [[uutils coreutils] cp -rfT src des --> cp: prefix not found](https://github.com/samwhelp/ubuntu-iso-builder-template/issues/1) |
| GitHub / pacstall / issue / [Cannot upgrade pacstall after upgrading to Ubuntu 25.10](https://github.com/pacstall/pacstall/issues/1397#issuecomment-3448077201) |
| GitHub / uutils-coreutils / issue / [bug: GNU and uutils dirname handles paths ending in "/." differently](https://github.com/uutils/coreutils/issues/8910) |
| GitHub / uutils-coreutils / issue / [bug: GNU and uutils dirname handles paths ending in "/." differently](https://github.com/uutils/coreutils/issues/8910) |
| GitHub / uutils-coreutils / issue / [The result of cp -rfT executed in uutils coreutils is different from the result in GNU Coreutils.](https://github.com/uutils/coreutils/issues/8708) |
| Ubuntu / rust-coreutils / Bugs / [#2122363 - cp -T: prefix not found](https://bugs.launchpad.net/ubuntu/+source/rust-coreutils/+bug/2122363) |
