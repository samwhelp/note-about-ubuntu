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

## 安裝其他的文字編輯器

執行下面的指令，安裝「[neovim](https://packages.ubuntu.com/jammy/neovim) (nvim)」

``` sh
sudo apt-get install neovim
```

執行下面的指令，安裝「[vim](https://packages.ubuntu.com/jammy/vim)」

``` sh
sudo apt-get install vim
```

## 操作說明

執行下面的指令，就可以設定改用其他慣用的文字編輯器了。

``` sh
sudo update-alternatives --config editor
```

會出現一個類似如下的列表，選擇你預設要使用的文字編輯器就行了。

```
There are 5 choices for the alternative editor (providing /usr/bin/editor).

  Selection    Path                Priority   Status
------------------------------------------------------------
* 0            /bin/nano            40        auto mode
  1            /bin/ed             -100       manual mode
  2            /bin/nano            40        manual mode
  3            /usr/bin/nvim        30        manual mode
  4            /usr/bin/vim.basic   30        manual mode
  5            /usr/bin/vim.tiny    15        manual mode

Press <enter> to keep the current choice[*], or type selection number:
```

我輸入「3」，按下「Enter」。

上面的操作完畢後驗證一下,看看是不是你想要預設使用的編輯器。

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
