---
title: dock-plank
nav_order: 3042
has_children: false
parent: xfce
grand_parent: 桌面環境
---


# dock-plank


## 微調腳本

| 微調腳本 |
| --- |
| [xfce-dock-plank](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/de/xfce/part/xfce-dock-plank) |


## 注意事項

* [~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/de/xfce/full/xfce-adjustment/config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml#L51)

``` xml
<property name="show_dock_shadow" type="bool" value="false"/>
```


或是使用「`xfwm4-tweaks-settings`」這個「圖形介面程式」來設定

在「Compositor」這個「頁籤」，

請「取消勾選」「Show shadows under dock windows」這個選項。
