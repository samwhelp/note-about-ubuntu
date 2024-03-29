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
gsettings set org.cinnamon hotcorner-layout "['expo:true:0', 'sakura:true:0', 'scale:true:0', 'desktop:true:0']"
```

| 方位 | 指令 | 功能 | 快速鍵 |
| --- | --- | --- | --- |
| 左上(西北) | `expo` | Show all windows | `Win + grave` |
| 右上(東北) | `sakura` | Run a command `sakura` |  |
| 左下(西南) | `scale` | Show all workspaces | `Win + Tab` |
| 右下(東南) | `desktop` | Show the desktop | `Win + d` |

> 關於「grave」 指的是 「`」，也就是「Tab」上面那個鍵位。

> 上面的快速鍵綁定，請參考「[keybind-main](https://samwhelp.github.io/note-about-ubuntu/read/desktop_environment/cinnamon/adjustment/keybind-main.html#%E5%88%87%E6%8F%9B%E9%A1%AF%E7%A4%BA%E6%A1%8C%E9%9D%A2)」該頁的說明，

> 請查詢「切換顯示桌面」，「切換顯示所有視窗」，「切換顯示所有工作空間」。


## 停用

* [設定片段](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/cinnamon/part/cinnamon-hot-corner/config-rollback.sh#L49)

``` sh
gsettings set org.cinnamon hotcorner-layout "['expo:false:0', 'desktop:false:0', 'scale:false:0', 'desktop:false:0']"
```


## 圖形使用者介面程式

> 除了透過指令來設定，也可以透過「圖形介面程式(Hot Corners)」來操作。

* /usr/share/applications/cinnamon-settings-hotcorner.desktop

``` sh
cinnamon-settings hotcorner
```
