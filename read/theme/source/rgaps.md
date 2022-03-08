---
title: rgaps
nav_order: 2700
has_children: false
parent: theme-source
grand_parent: 佈景主題
---


# RGaps


## 相關連結

* gnome-look.org / XFCE/XFWM4 Themes / [RGaps](https://www.gnome-look.org/p/1174081/)
* [https://github.com/Drzaln/Nema](https://github.com/Drzaln/Nema)
* [https://github.com/samwhelp/theme-xfwm4-collections#rgaps](https://github.com/samwhelp/theme-xfwm4-collections#rgaps)


## 說明

在「Xfce」，

也就是「Xfwm4(Window Manager)」的「佈景主題」，我喜歡採用「RGapsBlendNoButtons」，

來搭配其他的「Gtk Theme (UI Theme)」，

這樣在「[Window Decoration](https://en.wikipedia.org/wiki/Window_(computing)#Window_decoration)」，就不會顯示「Title」，但還是會有些微的「邊框」。


## 如何設定採用


### 圖形界面工具

* [xfwm4-settings](https://docs.xfce.org/xfce/xfwm4/preferences) / Style


### 指令工具

* [xfconf-query](https://docs.xfce.org/xfce/xfconf/xfconf-query)

可以執行下面指令

``` sh
xfconf-query -c 'xfwm4' -p '/general/theme' -s 'RGapsBlendNoButtons'
```

或是也可以使用我開發的工具「[style-ctrl-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-ctrl-xfce.html)」，執行下面指令

``` sh
style-ctrl-xfce wm_theme RGapsBlendNoButtons
```

> 在「style-ctrl-xfce」內部，也是執行「xfconf-query」

另外我有搭配一些組合，所以可以採用「[style-switch-xfce](https://samwhelp.github.io/note-about-manjaro/read/project/style-xfce/style-switch-xfce.html)」。

有幾個組合可以執行

``` sh
style-switch-xfce wm_rgaps_blend_nobuttons_ui_gruvbox
```

執行

``` sh
style-switch-xfce wm_rgaps_blend_nobuttons_ui_dracula
```

執行

``` sh
style-switch-xfce wm_rgaps_blend_nobuttons_ui_nordic
```

執行

``` sh
style-switch-xfce wm_rgaps_blend_nobuttons_ui_matcha_dark_aliz
```

執行

``` sh
style-switch-xfce wm_rgaps_blend_nobuttons_ui_obsidian_2_gray
```

執行

``` sh
style-switch-xfce wm_rgaps_blend_nobuttons_ui_shades_of_gray
```
