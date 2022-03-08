---
title: 個人 bin 資料夾
nav_order: 5006
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# 個人 bin 資料夾

## 產生操作步驟

``` sh
mkdir -p ~/bin
mkdir -p ~/.local/bin/
```

## 說明

會產生上面兩個資料夾，

是因為在「~/.profile」這個檔案，

有將這兩個路徑加入「PATH」。

``` sh
cat ~/.profile
```

顯示

```
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
```
