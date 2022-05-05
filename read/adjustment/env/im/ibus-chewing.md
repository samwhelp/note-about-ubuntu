---
title: 中文輸入法 / ibus-chewing
nav_order: 5042
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# ibus-chewing


## 指令安裝

``` sh
sudo apt-get install ibus ibus-chewing
```


## 切換輸入法架構

執行下面指令，切換輸入法架構到「ibus」

``` sh
im-config -n ibus
```

重新登出，然後登入，就會生效


## ~/.xinputrc

上面的步驟，會儲存在「~/.xinputrc」，這個檔案

執行下面指令，觀看「~/.xinputrc」這個檔案的內容

``` sh
cat ~/.xinputrc
```

顯示

```
# im-config(8) generated on Thu, 05 May 2022 18:57:54 +0800
run_im ibus
# im-config signature: cccb5bd4a2715dcb548794dd116103df  -
```

> 主要是「`run_im ibus`」這一行。
