---
title: Download ISO
nav_order: 7010
has_children: false
parent: 下載
grand_parent: 入門
---



# Download ISO


## 安裝 wget

``` sh
sudo apt-get install wget
```

## iso-download.txt

```
https://releases.ubuntu.com/22.04/ubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/kubuntu/releases/22.04/release/kubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntu-mate/releases/22.04/release/ubuntu-mate-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntu-budgie/releases/22.04/release/ubuntu-budgie-22.04-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntustudio/releases/22.04/release/ubuntustudio-22.04-dvd-amd64.iso
```

## iso-download.sh

``` sh
wget -c -i iso-download.txt
```
