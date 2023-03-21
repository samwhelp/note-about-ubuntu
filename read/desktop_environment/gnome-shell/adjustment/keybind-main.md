---
title: keybind-main
nav_order: 3021
has_children: false
parent: gnome-shell
grand_parent: 桌面環境
---


# keybind-main


## 微調腳本

| 微調腳本 |
| --- |
| [gnome-shell-keybind-main](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main) |


## 主題

* [視窗操作](#視窗操作)
* [工作空間](#工作空間)
* [相關筆記](#相關筆記)


## 視窗操作


* [視窗切換](#視窗切換)
* [切換顯示桌面](#切換顯示桌面)
* [切換顯示 Overview](#切換顯示-overview)
* [切換顯示 Application Overview](#切換顯示-application-overview)
* [視窗關閉](視窗關閉)
* [全螢幕](#全螢幕)
* [最大化](#最大化)
* [最小化](#最小化)
* [內容區塊收合](#內容區塊收合)
* [開始視窗移動](#開始視窗移動)
* [開始視窗更改大小](#開始視窗更改大小)
* [永遠在最上方](#永遠在最上方)
* [顯示在所有工作空間](#顯示在所有工作空間)
* [視窗平鋪移動操作](#視窗平鋪移動操作)

### 視窗切換

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Super>a']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>s']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + a`         | 切換到上一個視窗 | `org.gnome.desktop.wm.keybindings switch-windows-backward` |
| `Win + s`         | 切換到下一個視窗 | `org.gnome.desktop.wm.keybindings switch-windows` |


### 切換顯示桌面

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings show-desktop "['<Super>d']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + d`         | 切換顯示桌面 | `org.gnome.desktop.wm.keybindings show-desktop` |


## 切換顯示 Overview

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.shell.keybindings toggle-overview "['<Super>Tab', '<Alt>j', '<Alt>Down']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Tab`         | 切換顯示 Overview | `org.gnome.shell.keybindings toggle-overview` |
| `Alt + Down`         | 切換顯示 Overview | `org.gnome.shell.keybindings toggle-overview` |
| `Alt + j`         | 切換顯示 Overview | `org.gnome.shell.keybindings toggle-overview` |


## 切換顯示 Application Overview


* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.shell.keybindings toggle-application-view "['<Super>grave', '<Alt>k', '<Alt>Up']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + grave`         | 切換顯示 Application Overview | `org.gnome.shell.keybindings toggle-application-view` |
| `Alt + Up`         | 切換顯示 Application Overview | `org.gnome.shell.keybindings toggle-application-view` |
| `Alt + k`         | 切換顯示 Application Overview | `org.gnome.shell.keybindings toggle-application-view` |


### 視窗關閉

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + q`         | 關閉視窗 | `org.gnome.desktop.wm.keybindings close` |


### 全螢幕

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen "['<Super>f', 'F11']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + f`         | 切換視窗全螢幕 | `org.gnome.desktop.wm.keybindings toggle-fullscreen`|
| `F11`         | 切換視窗全螢幕 | `org.gnome.desktop.wm.keybindings toggle-fullscreen` |


### 最大化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>w']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + w`         | 切換視窗最大化 | `org.gnome.desktop.wm.keybindings toggle-maximized` |


### 最小化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>x']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + x`         | 視窗最小化 | `org.gnome.desktop.wm.keybindings minimize` |


### 內容區塊收合

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings toggle-shaded "['<Super>y']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + y`         | 內容區塊收合 | `org.gnome.desktop.wm.keybindings toggle-shaded` |


### 開始視窗移動

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings begin-move "['<Super>e']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + e`         | 開始視窗移動 | `org.gnome.desktop.wm.keybindings begin-move` |


### 開始視窗更改大小

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings begin-resize "['<Super>r']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + r`         | 開始視窗更改大小 | `org.gnome.desktop.wm.keybindings begin-resize` |


### 永遠在最上方

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings toggle-above "['<Super>t']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + t`         | 切換視窗永遠在最上方 | `org.gnome.desktop.wm.keybindings toggle-above` |


### 顯示在所有工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces "['<Super>g']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + g`         | 切換視窗顯示在所有工作空間 | `org.gnome.desktop.wm.keybindings toggle-on-all-workspaces` |


### 視窗平鋪移動操作

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings maximize "['<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize "['<Super>Down']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-left "['<Super>Left']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right "['<Super>Right']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Up`         | 視窗最大化 | `org.gnome.desktop.wm.keybindings maximize` |
| `Win + Down`         | 視窗反最大化 | `org.gnome.desktop.wm.keybindings unmaximize` |
| `Win + Left`         | 視窗平鋪移動到畫面左半側(西方) | `org.gnome.mutter.keybindings toggle-tiled-left` |
| `Win + Right`         | 視窗平鋪移動到畫面右半側(東方) | `org.gnome.mutter.keybindings toggle-tiled-right` |


## 工作空間

* [我個人定義的工作空間](#我個人定義的工作空間)
* [循環切換工作空間](#循環切換工作空間)
* [切換到指定的工作空間](#切換到指定的工作空間)
* [移動視窗到指定的工作空間](#移動視窗到指定的工作空間)

### 我個人定義的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 5
gsettings set org.gnome.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"
```

| 工作空間(Workspace) | 名稱  |
| ------------------- | ----- |
| 1                   | File  |
| 2                   | Edit  |
| 3                   | Web   |
| 4                   | Term  |
| 5                   | Misc  |


### 循環切換工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Alt>a']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Alt>s']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + a`         | 切換到上一個工作空間 | `org.gnome.desktop.wm.keybindings switch-to-workspace-left` |
| `Alt + s`         | 切換到下一個工作空間 | `org.gnome.desktop.wm.keybindings switch-to-workspace-right` |


### 切換到指定的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Control><Alt>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Control><Alt>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Control><Alt>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Control><Alt>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Control><Alt>5']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + Ctrl + 1`         | 切換到工作空間 1 (File) | `org.gnome.desktop.wm.keybindings switch-to-workspace-1` |
| `Alt + Ctrl + 2`         | 切換到工作空間 2 (Edit) | `org.gnome.desktop.wm.keybindings switch-to-workspace-2` |
| `Alt + Ctrl + 3`         | 切換到工作空間 3 (Web) | `org.gnome.desktop.wm.keybindings switch-to-workspace-3`
| `Alt + Ctrl + 4`         | 切換到工作空間 4 (Term) | `org.gnome.desktop.wm.keybindings switch-to-workspace-4` |
| `Alt + Ctrl + 5`         | 切換到工作空間 5 (Misc) | `org.gnome.desktop.wm.keybindings switch-to-workspace-5` |


### 移動視窗到指定的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/gnome-shell/part/gnome-shell-keybind-main/config-install.sh)

``` sh
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Alt>exclam']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Alt>at']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Alt>numbersign']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Alt>dollar']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Alt>percent']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + Shift + 1`         | 移動視窗到工作空間 1 (File) | `org.gnome.desktop.wm.keybindings move-to-workspace-1` |
| `Alt + Shift + 2`         | 移動視窗到工作空間 2 (Edit) | `org.gnome.desktop.wm.keybindings move-to-workspace-1` |
| `Alt + Shift + 3`         | 移動視窗到工作空間 3 (Web) | `org.gnome.desktop.wm.keybindings move-to-workspace-1`
| `Alt + Shift + 4`         | 移動視窗到工作空間 4 (Term) | `org.gnome.desktop.wm.keybindings move-to-workspace-1` |
| `Alt + Shift + 5`         | 移動視窗到工作空間 5 (Misc) | `org.gnome.desktop.wm.keybindings move-to-workspace-1` |


## 相關筆記

* System Modeling / [通用鍵盤組合鍵操作](https://samwhelp.github.io/system-modeling/read/zh_tw/spec-keybind-common)
