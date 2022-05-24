---
title: gcin
nav_order: 3500
has_children: false
parent: 中文輸入法
---


# gcin


## 注意事項

> 在「Ubuntu-Wayland」的環境，「gcin」會讓「gnome-shell」崩潰。

> 在「Ubuntu-Xorg」的環境，「gcin」在「gnome-shell」則是可以正常運作。

> [若ibus同時存在，如何解決？](https://samwhelp.github.io/note-about-ubuntu/read/subject/im/howto/how_to_fake_ibus_to_be_removed.html)

## 指令安裝

``` sh
sudo apt-get install gcin gcin-gtk2-immodule gcin-gtk3-immodule gcin-qt5-immodule gcin-anthy gcin-voice
```


## 切換輸入法架構

執行下面指令，將「輸入法架構」切換到「gcin」

``` sh
im-config -n gcin
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
run_im gcin
# im-config signature: cccb5bd4a2715dcb548794dd116103df  -
```

主要是「`run_im gcin`」這一行。


## 環境變數

執行

``` sh
env | grep gcin
```

顯示

```
GTK_IM_MODULE=gcin
XMODIFIERS=@im=gcin
QT_IM_MODULE=gcin
```

執行

``` sh
cat /usr/share/im-config/data/26_gcin.rc
```

顯示

```
# start gcin
# vim: set sts=4 expandtab:

if [ "$IM_CONFIG_PHASE" = 2 ]; then
# start gcin daemon
/usr/bin/gcin &
fi

if [ "$IM_CONFIG_PHASE" = 1 ]; then
# set variables for the plain XIM
XMODIFIERS=@im=gcin

# Let's assume all required modules are installed
GTK_IM_MODULE=gcin
QT_IM_MODULE=gcin
# gcin has no clutter support
CLUTTER_IM_MODULE=xim


fi
```
