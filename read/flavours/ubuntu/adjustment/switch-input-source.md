---
title: switch-input-source
nav_order: 1011
has_children: false
parent: Ubuntu
grand_parent: Ubuntu Flavours
---


# switch-input-source


## 前提

執行

``` sh
gnome-shell --version
```

顯示

```
GNOME Shell 42.0
```

在「GNOME Shell」，內建有整合「ibus」，

所以我們可以透過下面的操作步驟，來加入「慣用的中文輸入法」。

以「[ibus-chewing](#ibus-chewing)」為例。


## ibus-chewing

執行下面指令，安裝「[ibus-chewing](https://packages.ubuntu.com/jammy/ibus-chewing)」。

``` sh
sudo apt-get install ibus-chewing
```

安裝完成後，請登出，再登入。


## gnome-control-center keyboard

接著可以透過「圖形使用者介面程式」，來加入「慣用的中文輸入法」。

``` sh
gnome-control-center keyboard
```

也就是在「Settings / Keyboard / Input Sources」那裡操作


## gsettings

除了使用上面「圖形使用者介面程式」的方式，

也可以透過「下指令」的方式，，來加入「慣用的中文輸入法」。

執行下面指令，就可以設定「可用輸入法清單」。

``` sh
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'chewing')]"
```

在畫面右上角的「bar」，就會出現一個「en」的「圖示」。

預設只要按下「`Win + Space`」或「`Shift + Win + Space`」，

就可以切換「英文輸入法」和「中文輸入法」。

## 更改切換按鍵

因為我還是習慣使用「`Ctrl + Space`」切換「英文輸入法」和「中文輸入法」。

所以執行下面指令，來更改「切換按鍵」

``` sh
gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Control>space', 'XF86Keyboard']"
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Control>space', '<Shift>XF86Keyboard']"
```

> 這個步驟，也可以透過「圖形使用者介面程式」的方式來操作，

> 在「Settings / Keyboard / Keyboard Shortcuts / Typing」那裡操作


## 微調腳本

統整上面的所有步驟的指令如下

``` sh
sudo apt-get install ibus-chewing

gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'chewing')]"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Control>space', 'XF86Keyboard']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Control>space', '<Shift>XF86Keyboard']"
```

以上指令，整合成一個微調腳本，紀錄在「[GitHub](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/part-gnome-shell/switch-input-source)」上

另外以「[ibus-libzhuyin](#ibus-libzhuyin)」為例。


## ibus-libzhuyin

執行下面指令，安裝「[ibus-libzhuyin](https://packages.ubuntu.com/jammy/ibus-libzhuyin) ([GitHub](https://github.com/libzhuyin/ibus-libzhuyin))」。

``` sh
sudo apt-get install ibus-libzhuyin
```

設定指令如下

``` sh
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'libzhuyin')]"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Control>space', 'XF86Keyboard']"

gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Control>space', '<Shift>XF86Keyboard']"
```

## 注意事項

也可以設定「同時三個輸入法」做「循環」，設定指令如下

``` sh
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'chewing'), ('ibus', 'libzhuyin')]"
```

只是我習慣「兩個輸入法切換」，所以只有設定「英文輸入法」和「慣用的中文輸入法」兩個循環而已。


## fcitx-chewing

若是要採用「fcitx-chewing」，請參考另一篇紀錄「[紀錄](https://samwhelp.github.io/note-about-ubuntu/read/adjustment/env/im.html#fcitx-chwing)」。


## Explore

執行

``` sh
dpkg -l *ibus*
```

執行

``` sh
apt-cache search ibus
```
