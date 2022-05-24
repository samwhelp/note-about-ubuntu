---
title: hime
nav_order: 3600
has_children: false
parent: 中文輸入法
---



# hime


## 注意事項

> 在「Ubuntu-Wayland」的環境，「hime」會讓「gnome-shell」崩潰。

> 在「Ubuntu-Xorg」的環境，「hime」在「gnome-shell」則是可以正常運作。

> [若ibus同時存在，如何解決？](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/howto/how_to_fake_ibus_to_be_removed.html)

## 指令安裝

``` sh
sudo apt-get install hime hime-gtk2-immodule hime-gtk3-immodule hime-qt5-immodule hime-chewing hime-anthy
```


## 切換輸入法架構

執行下面指令，將「輸入法架構」切換到「hime」

``` sh
im-config -n hime
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
# im-config(8) generated on Thu, 05 May 2022 18:57:54 +0800
run_im hime
# im-config signature: cccb5bd4a2715dcb548794dd116103df  -
```

主要是「`run_im hime`」這一行。


## 環境變數

執行

``` sh
env | grep hime
```

顯示

```
GTK_IM_MODULE=hime
XMODIFIERS=@im=hime
QT_IM_MODULE=hime
```

執行

``` sh
cat /usr/share/im-config/data/25_hime.rc
```

顯示

```
# start hime
# vim: set sts=4 expandtab:

if [ "$IM_CONFIG_PHASE" = 2 ]; then
# start hime daemon
/usr/bin/hime &
fi

if [ "$IM_CONFIG_PHASE" = 1 ]; then
# set variables for the plain XIM
XMODIFIERS=@im=hime

# Let's assume all required modules are installed
GTK_IM_MODULE=hime
QT_IM_MODULE=hime
# hime has no clutter support
CLUTTER_IM_MODULE=xim

fi
```
