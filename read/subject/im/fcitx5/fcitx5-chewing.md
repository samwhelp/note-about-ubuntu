---
title: fcitx5-chewing
nav_order: 3101
has_children: false
parent: fcitx5
grand_parent: 中文輸入法
---


# fcitx5-chewing


## 注意事項

> [若ibus同時存在，如何解決？](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/howto/how_to_fake_ibus_to_be_removed.html)


## 微調腳本

* [fcitx5-chewing 安裝微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/im/fcitx5-chewing)


## 指令安裝

執行下面指令

``` sh
sudo apt-get install fcitx5-chewing
```

執行下面指令，確保安裝支援「GTK」和「QT」環境所需要的「Package」

``` sh
sudo apt-get install fcitx5-frontend-gtk2 fcitx5-frontend-gtk3 fcitx5-frontend-gtk4 fcitx5-frontend-qt5
```

執行下面指令，安裝「圖形設定介面」的「輔助工具」

``` sh
sudo apt-get install fcitx5-config-qt
```

* 可以參考我的「[package-list.txt](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/im/fcitx5-chewing/package-list.txt)」


## 切換輸入法架構

執行下面指令，將「輸入法架構」切換到「fcitx5」

``` sh
im-config -n fcitx5
```

> 重新登出，然後登入，就會生效


## ~/.xinputrc

上面的步驟，會儲存在「~/.xinputrc」，這個檔案

執行下面指令，觀看「~/.xinputrc」這個檔案的內容

``` sh
cat ~/.xinputrc
```

顯示

```
# im-config(8) generated on Tue, 24 May 2022 13:19:25 +0800
run_im fcitx5
# im-config signature: 1584e859fcc6846c2f86d354c758ca0e  -
```

主要是「`run_im fcitx5`」這一行。


## 環境變數

執行

``` sh
env | grep fcitx
```

顯示

```
GTK_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
QT_IM_MODULE=fcitx
```

執行

``` sh
cat /usr/share/im-config/data/23_fcitx5.rc
```

顯示

```
# start fcitx5
# vim: set sts=4 expandtab:

if [ "$IM_CONFIG_PHASE" = 2 ]; then
    # start fcitx5 daemon
    /usr/bin/fcitx5 -d 2> /dev/null
fi


if [ "$IM_CONFIG_PHASE" = 1 ]; then
# set variables for the plain XIM
XMODIFIERS=@im=fcitx

# Let's assume all required modules are installed
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
CLUTTER_IM_MODULE=xim

fi
```


## 按鍵綁定

* [spec-keybind-chewing](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/im/fcitx5-chewing/spec-keybind-chewing.md)
* [spec-keybind](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/im/fcitx5-chewing/spec-keybind.md)
