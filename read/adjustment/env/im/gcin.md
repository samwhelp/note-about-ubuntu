---
title: 中文輸入法 / gcin
nav_order: 5045
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# gcin


## 指令安裝

``` sh
sudo apt-get install gcin gcin-gtk2-immodule gcin-gtk3-immodule gcin-qt5-immodule gcin-anthy gcin-voice
```


## 切換輸入法架構

執行下面指令，切換輸入法架構到「gcin」

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



## 注意事項

> 在「Ubuntu-Wayland」的環境，「gcin」會讓「gnome-shell」崩潰。

> 在「Ubuntu-Xorg」的環境，「gcin」在「gnome-shell」則是可以正常運作
