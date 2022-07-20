---
title: config-main
nav_order: 3001
has_children: false
parent: cinnamon
grand_parent: 桌面環境
---


# config-main


## 微調腳本

| 微調腳本 |
| --- |
| [cinnamon-config-main](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main) |


## 主要設定

> 主要設定採用的「applets」

``` sh
gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"

gsettings set org.cinnamon next-applet-id 15
```

> 把「Panel」改放到上方

``` sh
gsettings set org.cinnamon panels-enabled "['1:0:top']"
```

> 並且設定「~/.cinnamon」這個資料夾裡面的設定。

> 我是直接把舊「~/.cinnamon」刪除或備份，

> 然後複製我自己設定後的「[.cinnamon](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs)」這個資料夾，複製到「.cinnamon」

> 主要是修改「[按鍵綁定](#按鍵綁定)」，以及將「[常用應用程式](#常用應用程式)」「Pin to Panel」。

> 然而「[其他按鍵綁定](#其他按鍵綁定)」，

> 則是透過指令「`gsettings`」和「`dconf`」來設定，

> 也可以透過「`cinnamon-settings keyboard`」這個「圖形介面程式」來設定。


## 按鍵綁定

* [顯示主選單](#顯示主選單)
* [顯示日曆](#顯示日曆)
* [顯示音量調整選單](#顯示音量調整選單)
* [顯示網路連線選單](#顯示網路連線選單)
* [顯示通知訊息選單](#顯示通知訊息選單)
* [循環切換已經開啟程式的預覽圖示](#循環切換已經開啟程式的預覽圖示)
* [常用應用程式](#常用應用程式)
* [其他按鍵綁定](#其他按鍵綁定)


### 顯示主選單

* [~/.cinnamon/configs/menu@cinnamon.org/0.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/menu%40cinnamon.org/0.json#L76)

| 按鍵組合          | 功能     |
| ----------------- | -------- |
| `Alt + F1`         | 顯示主選單 |


### 顯示日曆

* [~/.cinnamon/configs/calendar@cinnamon.org/13.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/calendar%40cinnamon.org/13.json#L51)

| 按鍵組合          | 功能     |
| ----------------- | -------- |
| `Alt + F5`         | 顯示日曆 |


### 顯示音量調整選單

* [~/.cinnamon/configs/sound@cinnamon.org/sound@cinnamon.org.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/sound%40cinnamon.org/sound%40cinnamon.org.json#L24)

| 按鍵組合          | 功能     |
| ----------------- | -------- |
| `Alt + Ctrl + v`         | 顯示音量調整選單 |


### 顯示網路連線選單

* [~/.cinnamon/configs/network@cinnamon.org/network@cinnamon.org.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/network%40cinnamon.org/network%40cinnamon.org.json)

| 按鍵組合          | 功能     |
| ----------------- | -------- |
| `Alt + Ctrl + n`         | 顯示網路連線選單 |


### 顯示通知訊息選單

* [~/.cinnamon/configs/notifications@cinnamon.org/notifications@cinnamon.org.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/notifications%40cinnamon.org/notifications%40cinnamon.org.json#L37)

| 按鍵組合          | 功能     |
| ----------------- | -------- |
| `Alt + Ctrl + m`         | 顯示通知訊息選單 |
| `Alt + Ctrl + c`         | 清空通知訊息 |


### 循環切換已經開啟程式的預覽圖示

* [~/.cinnamon/configs/grouped-window-list@cinnamon.org/2.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/grouped-window-list%40cinnamon.org/2.json#L206)

| 按鍵組合          | 功能     |
| ----------------- | -------- |
| `Win + Esc`         | 循環切換已經開啟程式的預覽圖示 |


### 常用應用程式

* [~/.cinnamon/configs/grouped-window-list@cinnamon.org/2.json](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-config-main/config/cinnamon/config/.cinnamon/configs/grouped-window-list%40cinnamon.org/2.json#L166)

| 按鍵組合          | 功能     | 應用程式 |
| ----------------- | -------- | -------- |
| `Win + 1`         | 啟動或切換聚焦到「檔案管理器」 | `pcmanfm-qt` |
| `Win + 2`         | 啟動或切換聚焦到「文字編輯器」 | `mousepad` |
| `Win + 3`         | 啟動或切換聚焦到「網路瀏覽器」 | `firefox` |
| `Win + 4`         | 啟動或切換聚焦到「Terminal」 | `sakura` |

> 可以透過開啟應用程式，然後在「Panel」按下「滑鼠右鍵」，選「Pin to Panel」

> 然後可以透過「滑鼠拖曳」移動「Icon」的順序，

> 這樣就可以使用「`Super + 上排數字鍵`」，啟動或切換聚焦到「對應順序的應用程式」。

## 其他按鍵綁定

* [keybind-main](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/cinnamon/adjustment/keybind-main.html)
* [keybind-custom](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/cinnamon/adjustment/keybind-custom.html)
