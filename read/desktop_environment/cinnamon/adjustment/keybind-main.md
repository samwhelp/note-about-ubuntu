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

* [關閉視窗](#關閉視窗)
* [全螢幕](#全螢幕)
* [最大化](#最大化)


### 關閉視窗

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + q`         | 關閉視窗 | `gsettings set org.cinnamon.desktop.keybindings.wm close "['<Super>q']"`|


### 全螢幕

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + f`         | 切換視窗全螢幕 | `gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['<Super>f', 'F11']"`|
| `F11`         | 切換視窗全螢幕 | `gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['<Super>f', 'F11']"`|


### 最大化

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-keybind-main/config-install.sh)

| 按鍵組合          | 功能     | 設定項目         |
| ----------------- | -------- | ---------------- |
| `Win + w`         | 切換視窗全螢幕 | `gsettings set org.cinnamon.desktop.keybindings.wm toggle-maximized "['<Super>w']"`|

## 工作空間
