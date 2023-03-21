---
title: keybind-main
nav_order: 3021
has_children: false
parent: mate
grand_parent: 桌面環境
---


# keybind-main


## 微調腳本

| 微調腳本 |
| --- |
| [mate-keybind-main](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main) |


## 主題

* [視窗操作](#視窗操作)
* [工作空間](#工作空間)
* [相關筆記](#相關筆記)


## 視窗操作


* [視窗切換](#視窗切換)
* [切換顯示桌面](#切換顯示桌面)
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

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.global-keybindings switch-windows-backward '<Super>a'
gsettings set org.mate.Marco.global-keybindings switch-windows '<Super>s'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + a`         | 切換到上一個視窗 | `org.mate.Marco.global-keybindings switch-windows-backward` |
| `Win + s`         | 切換到下一個視窗 | `org.mate.Marco.global-keybindings switch-windows` |


### 切換顯示桌面

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.global-keybindings show-desktop '<Super>d'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + d`         | 切換顯示桌面 | `oorg.mate.Marco.global-keybindings show-desktop` |


### 視窗關閉

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings close '<Super>q'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + q`         | 關閉視窗 | `org.mate.Marco.window-keybindings close` |


### 全螢幕

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings toggle-fullscreen '<Super>f'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + f`         | 切換視窗全螢幕 | `org.mate.Marco.window-keybindings toggle-fullscreen`|


### 最大化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings toggle-maximized '<Super>w'
gsettings set org.mate.Marco.window-keybindings maximize '<Super>Up'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + w`         | 切換視窗最大化 | `org.mate.Marco.window-keybindings toggle-maximized` |


### 最小化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings minimize '<Super>x'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + x`         | 視窗最小化 | `org.mate.Marco.window-keybindings minimize` |


### 內容區塊收合

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings toggle-shaded '<Super>y'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + y`         | 內容區塊收合 | `gsettings set org.mate.Marco.window-keybindings toggle-shaded` |


### 開始視窗移動

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings begin-move '<Super>e'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + e`         | 開始視窗移動 | `org.mate.Marco.window-keybindings begin-move` |


### 開始視窗更改大小

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings begin-resize '<Super>r'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + r`         | 開始視窗更改大小 | `org.mate.Marco.window-keybindings begin-resize` |


### 永遠在最上方

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings toggle-above '<Super>t'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + t`         | 切換視窗永遠在最上方 | `org.mate.Marco.window-keybindings toggle-above` |


### 顯示在所有工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings toggle-on-all-workspaces '<Super>g'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + g`         | 切換視窗顯示在所有工作空間 | `org.mate.Marco.window-keybindings toggle-on-all-workspaces` |


### 視窗平鋪移動操作


* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings maximize '<Super>Up'
gsettings set org.mate.Marco.window-keybindings unmaximize '<Super>Down'
gsettings set org.mate.Marco.window-keybindings tile-to-side-w '<Super>Left'
gsettings set org.mate.Marco.window-keybindings tile-to-side-e '<Super>Right'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Up`         | 視窗最大化 | `org.mate.Marco.window-keybindings maximize` |
| `Win + Down`         | 視窗反最大化 | `org.mate.Marco.window-keybindings unmaximize` |
| `Win + Left`         | 視窗平鋪移動到畫面左半側(西方) | `org.mate.Marco.window-keybindings tile-to-side-w` |
| `Win + Right`         | 視窗平鋪移動到畫面右半側(東方) | `org.mate.desktop.keybindings.wm push-tile-right` |

``` sh
gsettings set org.mate.Marco.window-keybindings tile-to-corner-nw '<Super><Shift>Up'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-ne '<Super><Shift>Down'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-sw '<Super><Shift>Left'
gsettings set org.mate.Marco.window-keybindings tile-to-corner-se '<Super><Shift>Right'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Shift + Up`         | 視窗平鋪移動到畫面左上半部(西北) | `org.mate.Marco.window-keybindings tile-to-corner-nw` |
| `Win + Shift + Down`         | 視窗平鋪移動到畫面右上半部(東北) | `org.mate.Marco.window-keybindings tile-to-corner-ne` |
| `Win + Shift + Left`         | 視窗平鋪移動到畫面左下半部(西南) | `org.mate.Marco.window-keybindings tile-to-corner-sw` |
| `Win + Shift + Right`         | 視窗平鋪移動到畫面右下半部(東南) | `org.mate.Marco.window-keybindings tile-to-corner-se` |


## 工作空間

* [我個人定義的工作空間](#我個人定義的工作空間)
* [循環切換工作空間](#循環切換工作空間)
* [切換到指定的工作空間](#切換到指定的工作空間)
* [移動視窗到指定的工作空間](#移動視窗到指定的工作空間)

### 我個人定義的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.general num-workspaces 5
gsettings set org.mate.Marco.workspace-names name-1 'File'
gsettings set org.mate.Marco.workspace-names name-2 'Edit'
gsettings set org.mate.Marco.workspace-names name-3 'Web'
gsettings set org.mate.Marco.workspace-names name-4 'Term'
gsettings set org.mate.Marco.workspace-names name-5 'Misc'

gsettings set org.mate.Marco.global-keybindings rename-workspace '<Alt>r'
```

| 工作空間(Workspace) | 名稱  |
| ------------------- | ----- |
| 1                   | File  |
| 2                   | Edit  |
| 3                   | Web   |
| 4                   | Term  |
| 5                   | Misc  |


### 循環切換工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-left '<Alt>a'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-right '<Alt>s'

gsettings set org.mate.Marco.global-keybindings switch-to-workspace-prev '<Alt>z'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + a`         | 切換到上一個工作空間 | `org.mate.Marco.global-keybindings switch-to-workspace-left` |
| `Alt + s`         | 切換到下一個工作空間 | `org.mate.Marco.global-keybindings switch-to-workspace-right` |
| `Alt + z`         | 切換到之前一個工作空間 | `org.mate.Marco.global-keybindings switch-to-workspace-prev` |


### 切換到指定的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-1 '<Control><Alt>1'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-2 '<Control><Alt>2'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-3 '<Control><Alt>3'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-4 '<Control><Alt>4'
gsettings set org.mate.Marco.global-keybindings switch-to-workspace-5 '<Control><Alt>5'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + Ctrl + 1`         | 切換到工作空間 1 (File) | `org.mate.Marco.global-keybindings switch-to-workspace-1` |
| `Alt + Ctrl + 2`         | 切換到工作空間 2 (Edit) | `org.mate.Marco.global-keybindings switch-to-workspace-2` |
| `Alt + Ctrl + 3`         | 切換到工作空間 3 (Web) | `org.mate.Marco.global-keybindings switch-to-workspace-3`
| `Alt + Ctrl + 4`         | 切換到工作空間 4 (Term) | `org.mate.Marco.global-keybindings switch-to-workspace-4` |
| `Alt + Ctrl + 5`         | 切換到工作空間 5 (Misc) | `org.mate.Marco.global-keybindings switch-to-workspace-5` |


### 移動視窗到指定的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/mate/part/mate-keybind-main/config-install.sh)

``` sh
gsettings set org.mate.Marco.window-keybindings move-to-workspace-1 '<Shift><Alt>exclam'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-2 '<Shift><Alt>at'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-3 '<Shift><Alt>numbersign'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-4 '<Shift><Alt>dollar'
gsettings set org.mate.Marco.window-keybindings move-to-workspace-5 '<Shift><Alt>percent'
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + Shift + 1`         | 移動視窗到工作空間 1 (File) | `org.mate.Marco.window-keybindings move-to-workspace-1` |
| `Alt + Shift + 2`         | 移動視窗到工作空間 2 (Edit) | `org.mate.Marco.window-keybindings move-to-workspace-1` |
| `Alt + Shift + 3`         | 移動視窗到工作空間 3 (Web) | `org.mate.Marco.window-keybindings move-to-workspace-1`
| `Alt + Shift + 4`         | 移動視窗到工作空間 4 (Term) | `org.mate.Marco.window-keybindings move-to-workspace-1` |
| `Alt + Shift + 5`         | 移動視窗到工作空間 5 (Misc) | `org.mate.Marco.window-keybindings move-to-workspace-1` |


## 相關筆記

* System Modeling / [通用鍵盤組合鍵操作](https://samwhelp.github.io/system-modeling/read/zh_tw/spec-keybind-common)
