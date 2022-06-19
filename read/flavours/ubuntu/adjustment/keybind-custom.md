---
title: keybind-custom
nav_order: 3022
has_children: false
parent: ubuntu
grand_parent: Ubuntu Flavours
---


# keybind-custom


## 微調腳本

| 微調腳本 |
| --- |
| [ubuntu-keybind-custom](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom) |


## 主題

* [系統操作](#系統操作)
* [桌面圖片](#桌面圖片)
* [開啟應用程式 (Rofi)](#開啟應用程式-rofi)
* [開啟應用程式 (Terminal)](#開啟應用程式-terminal)
* [開啟應用程式 (常用的)](#開啟應用程式-常用的)
* [音量控制](#音量控制)


## 系統操作

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom/config-install.sh#L98)

| 按鍵組合          | 功能                           | 執行指令                            |
| ----------------- | ------------------------------ | ----------------------------------- |
| `Alt + Shift + z` | 關機 (會先跳出「確認對話框」)  | `ubuntu-session-quit --power-off` |
| `Alt + Shift + x` | 登出 (會先跳出「確認對話框」)  | `ubuntu-session-quit --logout`    |


## 桌面圖片

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom/config-install.sh#L75)

| 按鍵組合         | 功能                 | 路徑                                          |
| ---------------- | -------------------- | --------------------------------------------- |
| `Alt + w`        | 隨機更換新的桌面圖片 | 隨機選取資料夾: `~/Pictures/Wallpaper`        |
| `Alt + Ctrl + w` | 更換成預設的桌面圖片 | 預設圖片： `~/Pictures/Wallpaper/default.jpg` |


## 開啟應用程式 (Rofi)

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom/config-install.sh#L98)

| 按鍵組合          | 功能                           | 執行指令                        |
| ----------------- | ------------------------------ | ------------------------------- |
| `Alt + Shift + d` | 開啟 Rofi (可用應用程式列表)   | `rofi -show drun -show-icons`   |
| `Alt + Shift + w` | 開啟 Rofi (已經開啟的視窗列表) | `rofi -show window -show-icons` |
| `Alt + Shift + r` | 開啟 Rofi (可用指令列表)       | `rofi -show run`                |


## 開啟應用程式 (Terminal)

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom/config-install.sh#L118)

| 按鍵組合          | 功能         | 執行指令                     |
| ----------------- | ------------- | --------------------------- |
| `Alt + Enter`     | 開啟 Terminal | `sakura -m`                 |
| `Alt + Shift + a` | 開啟 Terminal | `sakura -m`                 |
| `Alt + Ctrl + a`  | 開啟 Terminal | `xfce4-terminal --maximize` |
| `Alt + Shift + t` | 開啟 Terminal | `xterm`                     |
| `Alt + Ctrl + t`  | 開啟 Terminal | `urxvt`                     |


## 開啟應用程式 (常用的)

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom/config-install.sh#L146)

| 按鍵組合          | 功能           | 執行指令     |
| ----------------- | -------------- | ------------ |
| `Alt + Shift + f` | 開啟檔案管理器 | `pcmanfm-qt` |
| `Alt + Shift + g` | 開啟檔案管理器 | `thunar`     |
| `Alt + Shift + e` | 開啟文字編輯器 | `mousepad`   |
| `Alt + Shift + b` | 開啟網頁瀏覽器 | `firefox`    |


## 音量控制

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/ubuntu/part/ubuntu-keybind-custom/config-install.sh#L168)

| 按鍵組合          | 功能             | 執行指令                                    |
| ----------------- | ---------------- | ------------------------------------------- |
| `Alt + Shift + v` | 開啟音量控制面板 | `mate-volume-control`                       |
| `Alt + m`         | 音量切換成靜音   | `amixer -q -D pulse sset Master toggle`     |
| `Alt + Shift + <` | 減小音量         | `amixer -q -D pulse sset Master 5%- unmute` |
| `Alt + Shift + >` | 增加音量         | `amixer -q -D pulse sset Master 5%+ unmute` |
| `Alt + Ctrl + ,`  | 緩慢地減小音量   | `amixer -q -D pulse sset Master 1%- unmute` |
| `Alt + Ctrl + .`  | 緩慢地增加音量   | `amixer -q -D pulse sset Master 1%+ unmute` |


| 按鍵組合               | 功能           | 執行指令                                    |
| ---------------------- | -------------- | ------------------------------------------- |
| `XF86AudioMute`        | 音量切換成靜音 | `amixer -q -D pulse sset Master toggle`     |
| `XF86AudioLowerVolume` | 減小音量       | `amixer -q -D pulse sset Master 5%- unmute` |
| `XF86AudioRaiseVolume` | 增加音量       | `amixer -q -D pulse sset Master 5%+ unmute` |
