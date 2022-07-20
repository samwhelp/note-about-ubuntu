---
title: keybind-main
nav_order: 3021
has_children: false
parent: cinnamon
grand_parent: 桌面環境
---


# keybind-main


## 微調腳本

| 微調腳本 |
| --- |
| [cinnamon-keybind-main](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main) |


## 圖形使用者介面程式

> 除了透過指令來設定，也可以透過「圖形介面程式(Keyboard)」來操作。

* /usr/share/applications/cinnamon-settings-keyboard.desktop

``` sh
cinnamon-settings keyboard
```



## 主題

* [視窗操作](#視窗操作)
* [工作空間](#工作空間)
* [相關筆記](#相關筆記)


## 視窗操作


* [視窗切換](#視窗切換)
* [切換顯示桌面](#切換顯示桌面)
* [切換顯示所有視窗](#切換顯示所有視窗)
* [切換顯示所有工作空間](#切換顯示所有工作空間)
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
* [視窗透明度](#視窗透明度)


### 視窗切換

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm switch-windows-backward "['<Super>a']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-windows "['<Super>s']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + a`         | 切換到上一個視窗 | `org.cinnamon.desktop.keybindings.wm switch-windows-backward` |
| `Win + s`         | 切換到下一個視窗 | `org.cinnamon.desktop.keybindings.wm switch-windows` |


### 切換顯示桌面

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm show-desktop "['<Super>d']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + d`         | 切換顯示桌面 | `org.cinnamon.desktop.keybindings.wm show-desktop` |


> 也有設定「[Hot Corner](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/cinnamon/adjustment/hot-corner.html#%E8%A8%AD%E5%AE%9A)」觸發，設定在「右下(東南)」。


## 切換顯示所有視窗


* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-down "['<Super>Tab', '<Alt>k', '<Alt>Down']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + d`         | 切換顯示所有視窗 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-down` |
| `Alt + Down`         | 切換顯示所有視窗 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-down` |
| `Alt + k`         | 切換顯示所有視窗 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-down` |


> 也有設定「[Hot Corner](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/cinnamon/adjustment/hot-corner.html#%E8%A8%AD%E5%AE%9A)」觸發，設定在「左上(西北)」。


## 切換顯示所有工作空間


* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-up "['<Super>grave', '<Alt>j', '<Alt>Up']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + grave`         | 切換顯示所有工作空間 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-up` |
| `Alt + Up`         | 切換顯示所有工作空間 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-up` |
| `Alt + j`         | 切換顯示所有工作空間 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-up` |


> 也有設定「[Hot Corner](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/cinnamon/adjustment/hot-corner.html#%E8%A8%AD%E5%AE%9A)」觸發，設定在「左下(西南)」。


### 視窗關閉

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm close "['<Super>q']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + q`         | 關閉視窗 | `org.cinnamon.desktop.keybindings.wm close` |


### 全螢幕

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['<Super>f', 'F11']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + f`         | 切換視窗全螢幕 | `org.cinnamon.desktop.keybindings.wm toggle-fullscreen`|
| `F11`         | 切換視窗全螢幕 | `org.cinnamon.desktop.keybindings.wm toggle-fullscreen` |


### 最大化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "['<Super>w']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + w`         | 切換視窗最大化 | `org.cinnamon.desktop.keybindings.wm toggle-maximized` |


### 最小化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm minimize "['<Super>x']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + x`         | 視窗最小化 | `org.cinnamon.desktop.keybindings.wm minimize` |


### 內容區塊收合

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm toggle-shaded "['<Super>y']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + y`         | 內容區塊收合 | `org.cinnamon.desktop.keybindings.wm toggle-shaded` |


### 開始視窗移動

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm begin-move "['<Super>e']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + e`         | 開始視窗移動 | `org.cinnamon.desktop.keybindings.wm begin-move` |


### 開始視窗更改大小

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm begin-resize "['<Super>r']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + r`         | 開始視窗更改大小 | `org.cinnamon.desktop.keybindings.wm begin-resize` |


### 永遠在最上方

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm toggle-above "['<Super>t']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + t`         | 切換視窗永遠在最上方 | `org.cinnamon.desktop.keybindings.wm toggle-above` |


### 顯示在所有工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm toggle-on-all-workspaces "['<Super>g']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + g`         | 切換視窗顯示在所有工作空間 | `org.cinnamon.desktop.keybindings.wm toggle-on-all-workspaces` |


### 視窗平鋪移動操作


* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-up "['<Super>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-down "['<Super>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-left "['<Super>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm push-tile-right "['<Super>Right']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Up`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-up` |
| `Win + Down`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-down` |
| `Win + Left`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-left` |
| `Win + Right`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-right` |

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-up "['<Super><Control>Up']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-down "['<Super><Control>Down']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-left "['<Super><Control>Left']"
gsettings set org.cinnamon.desktop.keybindings.wm push-snap-right "['<Super><Control>Right']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Ctrl + Up`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-up` |
| `Win + Ctrl + Down`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-down` |
| `Win + Ctrl + Left`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-left` |
| `Win + Ctrl + Right`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-right` |


## 視窗透明度

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm decrease-opacity "['<Super>bracketleft']"
gsettings set org.cinnamon.desktop.keybindings.wm increase-opacity "['<Super>bracketright']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + [`         | 視窗透明度(越透明) | `org.cinnamon.desktop.keybindings.wm decrease-opacity` |
| `Win + ]`         | 視窗透明度(越不透明) | `org.cinnamon.desktop.keybindings.wm increase-opacity` |


## 工作空間

* [我個人定義的工作空間](#我個人定義的工作空間)
* [循環切換工作空間](#循環切換工作空間)
* [切換到指定的工作空間](#切換到指定的工作空間)
* [移動視窗到指定的工作空間](#移動視窗到指定的工作空間)

### 我個人定義的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 5
gsettings set org.cinnamon.desktop.wm.preferences workspace-names "['File', 'Edit', 'Web', 'Term', 'Misc']"

gsettings set org.cinnamon.muffin dynamic-workspaces false
gsettings set org.cinnamon.muffin workspace-cycle true
```

| 工作空間(Workspace) | 名稱  |
| ------------------- | ----- |
| 1                   | File  |
| 2                   | Edit  |
| 3                   | Web   |
| 4                   | Term  |
| 5                   | Misc  |


### 循環切換工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-left "['<Alt>a']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-right "['<Alt>s']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + a`         | 切換到上一個工作空間 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-left` |
| `Alt + s`         | 切換到下一個工作空間 | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-right` |


### 切換到指定的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Alt>1']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Alt>2']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Alt>3']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "['<Alt>4']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "['<Alt>5']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + 1`         | 切換到工作空間 1 (File) | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-1` |
| `Alt + 2`         | 切換到工作空間 2 (Edit) | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-2` |
| `Alt + 3`         | 切換到工作空間 3 (Web) | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-3`
| `Alt + 4`         | 切換到工作空間 4 (Term) | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-4` |
| `Alt + 5`         | 切換到工作空間 5 (Misc) | `org.cinnamon.desktop.keybindings.wm switch-to-workspace-5` |


### 移動視窗到指定的工作空間

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

``` sh
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-1 "['<Shift><Alt>exclam']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-2 "['<Shift><Alt>at']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-3 "['<Shift><Alt>numbersign']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-4 "['<Shift><Alt>dollar']"
gsettings set org.cinnamon.desktop.keybindings.wm move-to-workspace-5 "['<Shift><Alt>percent']"
```

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Alt + Shift + 1`         | 移動視窗到工作空間 1 (File) | `org.cinnamon.desktop.keybindings.wm move-to-workspace-1` |
| `Alt + Shift + 2`         | 移動視窗到工作空間 2 (Edit) | `org.cinnamon.desktop.keybindings.wm move-to-workspace-1` |
| `Alt + Shift + 3`         | 移動視窗到工作空間 3 (Web) | `org.cinnamon.desktop.keybindings.wm move-to-workspace-1`
| `Alt + Shift + 4`         | 移動視窗到工作空間 4 (Term) | `org.cinnamon.desktop.keybindings.wm move-to-workspace-1` |
| `Alt + Shift + 5`         | 移動視窗到工作空間 5 (Misc) | `org.cinnamon.desktop.keybindings.wm move-to-workspace-1` |


## 相關筆記

* System Modeling / [通用鍵盤組合鍵操作](https://samwhelp.github.io/system-modeling/read/zh_tw/spec-keybind-common)
