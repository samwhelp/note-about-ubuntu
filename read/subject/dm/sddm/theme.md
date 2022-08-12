---
title: sddm-theme
nav_order: 4201
has_children: false
parent: sddm
grand_parent: XDM
---


# sddm-theme


## Package

* [sddm-theme-debian-maui](sddm-theme-debian-maui)


## Source

* [sddm-theme-sugar-candy](sddm-theme-sugar-candy)
* [sddm-theme-sugar-dark](sddm-theme-sugar-dark)
* [sddm-theme-sugar-light](sddm-theme-sugar-light)
* [sddm-theme-chili](sddm-theme-chili)


## Link

* [https://www.pling.com/browse?cat=101](https://www.pling.com/browse?cat=101)
* [https://store.kde.org/browse?cat=101](https://store.kde.org/browse?cat=101)
* [https://www.gnome-look.org/browse?cat=101](https://www.gnome-look.org/browse?cat=101)


## 如何切換「佈景主題」

因為在「Ubuntu」這個環境，

在**不修改設定檔**的前提下

預設套用的「sddm theme」是「/usr/share/sddm/themes/ubuntu-theme」這個路徑。

再搭配「[update-alternatives](https://manpages.ubuntu.com/manpages/jammy/en/man1/update-alternatives.1.html)」的機制，

可以透過下面兩種方式，來切換要套用的「佈景主題」。


### 方式一

執行

``` sh
sudo update-alternatives --config sddm-ubuntu-theme
```

顯示

```
There are 5 choices for the alternative sddm-ubuntu-theme (providing /usr/share/sddm/themes/ubuntu-theme).

  Selection    Path                                           Priority   Status
------------------------------------------------------------
* 0            /usr/share/sddm/themes/sddm-theme-chili         53        auto mode
  1            /usr/share/sddm/themes/debian-maui              40        manual mode
  2            /usr/share/sddm/themes/sddm-theme-chili         53        manual mode
  3            /usr/share/sddm/themes/sddm-theme-sugar-candy   50        manual mode
  4            /usr/share/sddm/themes/sddm-theme-sugar-dark    51        manual mode
  5            /usr/share/sddm/themes/sddm-theme-sugar-light   52        manual mode

Press <enter> to keep the current choice[*], or type selection number:
```

然後輸入「3」，並且按下「enter」

接著會顯示如下

```
update-alternatives: using /usr/share/sddm/themes/sddm-theme-sugar-candy to provide /usr/share/sddm/themes/ubuntu-theme (sddm-ubuntu-theme) in manual mode
```

### 方式二

執行

``` sh
update-alternatives --list sddm-ubuntu-theme
```

顯示

```
/usr/share/sddm/themes/debian-maui
/usr/share/sddm/themes/sddm-theme-chili
/usr/share/sddm/themes/sddm-theme-sugar-candy
/usr/share/sddm/themes/sddm-theme-sugar-dark
/usr/share/sddm/themes/sddm-theme-sugar-light
```

執行

``` sh
sudo update-alternatives --set sddm-ubuntu-theme /usr/share/sddm/themes/sddm-theme-sugar-dark
```

顯示

```
update-alternatives: using /usr/share/sddm/themes/sddm-theme-sugar-dark to provide /usr/share/sddm/themes/ubuntu-theme (sddm-ubuntu-theme) in manual mode
```


## 如何觀看目前狀態

### 方式一

執行

``` sh
update-alternatives --display sddm-ubuntu-theme
```

顯示

```
sddm-ubuntu-theme - manual mode
  link best version is /usr/share/sddm/themes/sddm-theme-chili
  link currently points to /usr/share/sddm/themes/sddm-theme-sugar-dark
  link sddm-ubuntu-theme is /usr/share/sddm/themes/ubuntu-theme
/usr/share/sddm/themes/debian-maui - priority 40
/usr/share/sddm/themes/sddm-theme-chili - priority 53
/usr/share/sddm/themes/sddm-theme-sugar-candy - priority 50
/usr/share/sddm/themes/sddm-theme-sugar-dark - priority 51
/usr/share/sddm/themes/sddm-theme-sugar-light - priority 52
```


### 方式二

執行

``` sh
update-alternatives --query sddm-ubuntu-theme
```

顯示

```
Name: sddm-ubuntu-theme
Link: /usr/share/sddm/themes/ubuntu-theme
Status: manual
Best: /usr/share/sddm/themes/sddm-theme-chili
Value: /usr/share/sddm/themes/sddm-theme-sugar-dark

Alternative: /usr/share/sddm/themes/debian-maui
Priority: 40

Alternative: /usr/share/sddm/themes/sddm-theme-chili
Priority: 53

Alternative: /usr/share/sddm/themes/sddm-theme-sugar-candy
Priority: 50

Alternative: /usr/share/sddm/themes/sddm-theme-sugar-dark
Priority: 51

Alternative: /usr/share/sddm/themes/sddm-theme-sugar-light
Priority: 52
```

### 方式三

執行

``` sh
sudo update-alternatives --config sddm-ubuntu-theme
```

顯示

```
There are 5 choices for the alternative sddm-ubuntu-theme (providing /usr/share/sddm/themes/ubuntu-theme).

  Selection    Path                                           Priority   Status
------------------------------------------------------------
  0            /usr/share/sddm/themes/sddm-theme-chili         53        auto mode
  1            /usr/share/sddm/themes/debian-maui              40        manual mode
  2            /usr/share/sddm/themes/sddm-theme-chili         53        manual mode
  3            /usr/share/sddm/themes/sddm-theme-sugar-candy   50        manual mode
* 4            /usr/share/sddm/themes/sddm-theme-sugar-dark    51        manual mode
  5            /usr/share/sddm/themes/sddm-theme-sugar-light   52        manual mode

Press <enter> to keep the current choice[*], or type selection number:
```

## 重新啟動 sddm

``` sh
sudo systemctl restart sddm.service
```
