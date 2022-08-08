---
title: sddm-theme-sugar-light
nav_order: 4222
has_children: false
parent: sddm
grand_parent: XDM
---


# sddm-theme-sugar-light


## Link

* [https://www.opendesktop.org/p/1272119](https://www.opendesktop.org/p/1272119)
* [https://github.com/MarianArlt/sddm-sugar-light](https://github.com/MarianArlt/sddm-sugar-light)
* [https://aur.archlinux.org/packages/sddm-sugar-light](https://aur.archlinux.org/packages/sddm-sugar-light)




## 如何安裝


### clone

執行下面指令，

將「https://github.com/MarianArlt/sddm-sugar-light.git」

clone 到「sddm-theme-sugar-light」這個資料夾。

``` sh
git clone https://github.com/MarianArlt/sddm-sugar-light.git sddm-theme-sugar-light
```


### 移除 .git

執行下面指令，將「sddm-theme-sugar-light/.git」這個資料夾以及檔案移除

``` sh
rm -rf sddm-theme-sugar-light/.git
```


### 準備資料夾

執行下面指令，先產生「/usr/share/sddm/themes/sddm-theme-sugar-light/」這個資料夾

``` sh
sudo mkdir -p /usr/share/sddm/themes/sddm-theme-sugar-light/
```


### 安裝 sddm-theme-sugar-light

執行下面指令，將「sddm-theme-sugar-light」裡面的所有檔案，

複製到「/usr/share/sddm/themes/sddm-theme-sugar-light」

``` sh
sudo cp -rfv sddm-theme-sugar-light/. /usr/share/sddm/themes/sddm-theme-sugar-light
```

可以執行「`ls -1 /usr/share/sddm/themes/`」，觀看有那些「theme」可選。


### 納入 update-alternatives 的機制

執行下面指令，

將「/usr/share/sddm/themes/sddm-theme-sugar-light」

納入「update-alternatives」的機制。

``` sh
sudo update-alternatives --install \
	/usr/share/sddm/themes/ubuntu-theme \
	sddm-ubuntu-theme \
	/usr/share/sddm/themes/sddm-theme-sugar-light 52
```


### 透過 update-alternatives 的機制， 設定 sddm theme

可以直接設定，執行下面指令

``` sh
sudo update-alternatives --set sddm-ubuntu-theme /usr/share/sddm/themes/sddm-theme-sugar-light
```

或是也可以執行下面指令，

``` sh
sudo update-alternatives --config sddm-ubuntu-theme
```

會出現一個「候選選單」，可以輸入號碼，選擇要套用那個「theme」。


## 重新啟動 sddm

``` sh
sudo systemctl restart sddm.service
```




## 如何移除


### 移出 update-alternatives 的機制

若是要「移出 update-alternatives 的機制」，執行下面指令

``` sh
sudo update-alternatives --remove \
	sddm-ubuntu-theme \
	/usr/share/sddm/themes/sddm-theme-sugar-light
```


### 移除

執行下面指令，將「/usr/share/sddm/themes/sddm-theme-sugar-light」這個資料夾移除。

``` sh
sudo rm -rf /usr/share/sddm/themes/sddm-theme-sugar-light
```
