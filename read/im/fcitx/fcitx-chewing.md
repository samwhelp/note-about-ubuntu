---
title: fcitx-chewing
nav_order: 3101
has_children: false
parent: fcitx
grand_parent: 中文輸入法
---


# fcitx-chewing

## 微調腳本

* [fcitx-chewing 安裝微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/im/fcitx-chewing)


## 指令安裝

``` sh
sudo apt-get install fcitx-chewing
```


## 切換輸入法架構

執行下面指令，切換輸入法架構到「fcitx」

``` sh
im-config -n fcitx
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
run_im fcitx
# im-config signature: cccb5bd4a2715dcb548794dd116103df  -
```

主要是「`run_im fcitx`」這一行。


## 按鍵綁定

* [spec-keybind-chewing](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/im/fcitx-chewing/spec-keybind-chewing.md)
* [spec-keybind](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/env/im/fcitx-chewing/spec-keybind.md)
