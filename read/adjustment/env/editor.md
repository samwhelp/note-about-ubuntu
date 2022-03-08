---
title: 修改預設 editor
nav_order: 5000
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# 修改預設 editor

* [腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/editor/select-editor)

## Link

* [Ubuntu環境下，如何更改預設的「editor」](http://samwhelp.github.io/blog/read/linux/ubuntu/editor/select-editor/)

## 操作說明

執行下面的指令就可以選擇了

``` sh
sudo update-alternatives --config editor
```

會出現一個列表。選擇你預設要使用的編輯器就行了。

驗證一下,看看是不是你使用的編輯器。

執行下面的指令

``` sh
editor
```

或是執行下面的指令

``` sh
sensible-editor
```

另外也可以直接執行下面的指令，更改成你慣用的文字編輯器

例如：

慣用 nano

``` sh
sudo update-alternatives --set editor /bin/nano
```

慣用 vim.tiny

``` sh
sudo update-alternatives --set editor /usr/bin/vim.tiny
```

慣用 vim.basic

``` sh
sudo update-alternatives --set editor /usr/bin/vim.basic
```

慣用 nvim

``` sh
sudo update-alternatives --set editor /usr/bin/nvim
```
