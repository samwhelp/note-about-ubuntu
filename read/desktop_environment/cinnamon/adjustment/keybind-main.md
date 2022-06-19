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


## 主題

* [視窗操作](#視窗操作)
* [工作空間](#工作空間)


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
* [視窗平鋪移動操作](#視窗平鋪移動操作)

### 視窗切換

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + a`         | 切換到上一個視窗 | `org.cinnamon.desktop.keybindings.wm switch-windows-backward` |
| `Win + s`         | 切換到下一個視窗 | `org.cinnamon.desktop.keybindings.wm switch-windows` |


### 切換顯示桌面

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + d`         | 切換顯示桌面 | `org.cinnamon.desktop.keybindings.wm show-desktop` |


### 視窗關閉

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + q`         | 關閉視窗 | `org.cinnamon.desktop.keybindings.wm close` |


### 全螢幕

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + f`         | 切換視窗全螢幕 | `org.cinnamon.desktop.keybindings.wm toggle-fullscreen`|
| `F11`         | 切換視窗全螢幕 | `org.cinnamon.desktop.keybindings.wm toggle-fullscreen` |


### 最大化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + w`         | 切換視窗最大化 | `org.cinnamon.desktop.keybindings.wm toggle-maximized` |


### 最小化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + x`         | 視窗最小化 | `org.cinnamon.desktop.keybindings.wm minimize` |


### 內容區塊收合

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + y`         | 內容區塊收合 | `org.cinnamon.desktop.keybindings.wm toggle-shaded` |


### 開始視窗移動

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + e`         | 開始視窗移動 | `org.cinnamon.desktop.keybindings.wm begin-move` |


### 開始視窗更改大小

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + r`         | 開始視窗更改大小 | `org.cinnamon.desktop.keybindings.wm begin-resize` |


### 永遠在最上方

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + t`         | 切換視窗永遠在最上方 | `org.cinnamon.desktop.keybindings.wm toggle-above` |


### 視窗平鋪移動操作


* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Up`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-up` |
| `Win + Down`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-down` |
| `Win + Left`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-left` |
| `Win + Right`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-tile-right` |


| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + Ctrl + Up`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-up` |
| `Win + Ctrl + Down`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-down` |
| `Win + Ctrl + Left`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-left` |
| `Win + Ctrl + Right`         | 視窗平鋪移動操作 | `org.cinnamon.desktop.keybindings.wm push-snap-right` |


## 工作空間
