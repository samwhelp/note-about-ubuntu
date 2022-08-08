---
title: sddm-theme-sugar-dark
nav_order: 4221
has_children: false
parent: sddm
grand_parent: XDM
---


# sddm-theme-sugar-dark


## Link

* [https://www.pling.com/u/marianarlt/](https://www.pling.com/u/marianarlt/)
* [https://store.kde.org/p/1272122/](https://store.kde.org/p/1272122/)
* [https://www.opendesktop.org/p/1272122/](https://www.opendesktop.org/p/1272122/)
* [https://github.com/MarianArlt/sddm-sugar-dark](https://github.com/MarianArlt/sddm-sugar-dark)
* [https://aur.archlinux.org/packages/sddm-sugar-dark](https://aur.archlinux.org/packages/sddm-sugar-dark)




## 如何安裝


### clone

執行下面指令，

將「https://github.com/MarianArlt/sddm-sugar-dark.git」

clone 到「sddm-theme-sugar-dark」這個資料夾。

``` sh
git clone https://github.com/MarianArlt/sddm-sugar-dark.git sddm-theme-sugar-dark
```


### 移除 .git

執行下面指令，將「sddm-theme-sugar-dark/.git」這個資料夾以及檔案移除

``` sh
rm -rf sddm-theme-sugar-dark/.git
```


### 準備資料夾

執行下面指令，先產生「/usr/share/sddm/themes/sddm-theme-sugar-dark/」這個資料夾

``` sh
sudo mkdir -p /usr/share/sddm/themes/sddm-theme-sugar-dark/
```


### 安裝 sddm-theme-sugar-dark

執行下面指令，將「sddm-theme-sugar-dark」裡面的所有檔案，

複製到「/usr/share/sddm/themes/sddm-theme-sugar-dark」

``` sh
sudo cp -rfv sddm-theme-sugar-dark/. /usr/share/sddm/themes/sddm-theme-sugar-dark
```

可以執行「`ls -1 /usr/share/sddm/themes/`」，觀看有那些「theme」可選。


### 納入 update-alternatives 的機制

執行下面指令，

將「/usr/share/sddm/themes/sddm-theme-sugar-dark」

納入「update-alternatives」的機制。

``` sh
sudo update-alternatives --install \
	/usr/share/sddm/themes/ubuntu-theme \
	sddm-ubuntu-theme \
	/usr/share/sddm/themes/sddm-theme-sugar-dark 51
```


### 透過 update-alternatives 的機制， 設定 sddm theme

可以直接設定，執行下面指令

``` sh
sudo update-alternatives --set sddm-ubuntu-theme /usr/share/sddm/themes/sddm-theme-sugar-dark
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
	/usr/share/sddm/themes/sddm-theme-sugar-dark
```


### 移除

執行下面指令，將「/usr/share/sddm/themes/sddm-theme-sugar-dark」這個資料夾移除。

``` sh
sudo rm -rf /usr/share/sddm/themes/sddm-theme-sugar-dark
```
