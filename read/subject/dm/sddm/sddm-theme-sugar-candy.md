---
title: sddm-theme-sugar-candy
nav_order: 4220
has_children: false
parent: sddm
grand_parent: XDM
---


# sddm-theme-sugar-candy


## Link

* [https://store.kde.org/p/1312658/](https://store.kde.org/p/1312658/)
* [https://framagit.org/MarianArlt/sddm-sugar-candy](https://framagit.org/MarianArlt/sddm-sugar-candy)


## 如何安裝


### clone

執行下面指令，

將「https://framagit.org/MarianArlt/sddm-sugar-candy.git」

clone 到「sddm-theme-sugar-candy」這個資料夾。

``` sh
git clone https://framagit.org/MarianArlt/sddm-sugar-candy.git sddm-theme-sugar-candy
```


### 移除 .git

執行下面指令，將「sddm-theme-sugar-candy/.git」這個資料夾以及檔案，移除

``` sh
rm -rf sddm-theme-sugar-candy/.git
```


### 準備資料夾

執行下面指令，先產生「/usr/share/sddm/themes/sddm-theme-sugar-candy/」這個資料夾

``` sh
sudo mkdir -p /usr/share/sddm/themes/sddm-theme-sugar-candy/
```


### 安裝 sddm-theme-sugar-candy

執行下面指令，將「sddm-theme-sugar-candy」裡面的所有檔案，

複製到「/usr/share/sddm/themes/sddm-theme-sugar-candy」

``` sh
sudo cp -rfv sddm-theme-sugar-candy/. /usr/share/sddm/themes/sddm-theme-sugar-candy
```

可以執行「`ls -1 /usr/share/sddm/themes/`」，觀看有那些「theme」可選。


### 納入 update-alternatives 的機制

執行下面指令，

將「/usr/share/sddm/themes/sddm-theme-sugar-candy」

納入「update-alternatives」的機制。

``` sh
sudo update-alternatives --install \
	/usr/share/sddm/themes/ubuntu-theme \
	sddm-ubuntu-theme \
	/usr/share/sddm/themes/sddm-theme-sugar-candy 50
```


### 透過 update-alternatives 的機制， 設定 sddm theme

可以直接設定，執行下面指令

``` sh
sudo update-alternatives --set sddm-ubuntu-theme /usr/share/sddm/themes/sddm-theme-sugar-candy
```

或是也可以執行下面指令，

``` sh
sudo update-alternatives --config sddm-ubuntu-theme
```

會出現一個「候選選單」，可以輸入號碼，選擇要套用那個「theme」。


### 移出 update-alternatives 的機制

若是要「移出 update-alternatives 的機制」，執行下面指令

``` sh
sudo update-alternatives --remove \
	sddm-ubuntu-theme \
	/usr/share/sddm/themes/sddm-theme-sugar-candy
```


## 重新啟動 sddm

``` sh
sudo systemctl restart sddm.service
```
