---
title: hot-corner
nav_order: 3051
has_children: false
parent: cinnamon
grand_parent: 桌面環境
---


# hot-corner


## 微調腳本

| 微調腳本 |
| --- |
| [cinnamon-hot-corner](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-hot-corner) |


## 設定

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-hot-corner/config-install.sh#L48)

``` sh
gsettings set org.cinnamon hotcorner-layout "['scale:true:0', 'sakura:true:0', 'expo:true:0', 'desktop:true:0']"
```

| 方位 | 指令 | 功能 |
| --- | --- | --- |
| 左上(西北) | `scale` | Show all windows |
| 右上(東北) | `sakura` | Run a command `sakura` |
| 左下(西南) | `expo` | Show all workspaces |
| 右下(東南) | `desktop` | Show the desktop |
