---
title: Download ISO
nav_order: 7010
has_children: false
parent: 下載
grand_parent: 入門
---



# Download ISO


## 簡易下載 ISO 腳本

* [Ubuntu 22.04 flavours](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/download/iso/22.04)


## Link

### 總入口

* [https://releases.ubuntu.com](https://releases.ubuntu.com/)
* [https://cdimage.ubuntu.com/](https://cdimage.ubuntu.com/)

### 個別入口

* [https://releases.ubuntu.com/22.04/](https://releases.ubuntu.com/22.04/)
* [https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/](https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/)
* [https://cdimage.ubuntu.com/kubuntu/releases/22.04/release/](https://cdimage.ubuntu.com/kubuntu/releases/22.04/release/)
* [https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/](https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/)
* [https://cdimage.ubuntu.com/ubuntu-mate/releases/22.04/release/](https://cdimage.ubuntu.com/ubuntu-mate/releases/22.04/release/)
* [https://cdimage.ubuntu.com/ubuntu-budgie/releases/22.04/release/](https://cdimage.ubuntu.com/ubuntu-budgie/releases/22.04/release/)
* [https://cdimage.ubuntu.com/ubuntustudio/releases/22.04/release/](https://cdimage.ubuntu.com/ubuntustudio/releases/22.04/release/)


## ISO 列表

| [Ubuntu flavours](https://ubuntu.com/desktop/flavours) | ISO | Release Notes |
| --- | --- | --- |
| [Ubuntu](https://ubuntu.com/download) Desktop | [ubuntu-22.04.3-desktop-amd64.iso](https://releases.ubuntu.com/22.04/ubuntu-22.04.3-desktop-amd64.iso) | [Ubuntu 22.04 LTS is released](https://ubuntu.com/blog/ubuntu-22-04-lts-released) |
| [Ubuntu](https://ubuntu.com/download) Server | [ubuntu-22.04.3-live-server-amd64.iso](https://releases.ubuntu.com/22.04/ubuntu-22.04.3-live-server-amd64.iso) | [Ubuntu 22.04 LTS is released](https://ubuntu.com/blog/ubuntu-22-04-lts-released) |
| [Xubuntu](https://xubuntu.org/) | [xubuntu-22.04.3-desktop-amd64.iso](https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04.3-desktop-amd64.iso) | [Xubuntu 22.04 released!](https://xubuntu.org/news/xubuntu-22-04-released/) ([Xubuntu 22.04](https://xubuntu.org/release/22-04/))|
| [Kubuntu](https://kubuntu.org/) | [kubuntu-22.04.3-desktop-amd64.iso](https://cdimage.ubuntu.com/kubuntu/releases/22.04/release/kubuntu-22.04.3-desktop-amd64.iso) | [Kubuntu 22.04 LTS Released](https://kubuntu.org/news/kubuntu-22-04-lts-released/) ([Release Notes](https://wiki.ubuntu.com/JammyJellyfish/ReleaseNotes/Kubuntu)) |
| [Lubuntu](https://lubuntu.me/) | [lubuntu-22.04.3-desktop-amd64.iso](https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04.3-desktop-amd64.iso) | [Lubuntu 22.04 LTS is Released!](https://lubuntu.me/jammy-released/) |
| [Ubuntu MATE](https://ubuntu-mate.org/) | [ubuntu-mate-22.04.3-desktop-amd64.iso](https://cdimage.ubuntu.com/ubuntu-mate/releases/22.04/release/ubuntu-mate-22.04.3-desktop-amd64.iso) | [Ubuntu MATE 22.04 LTS Release Notes](https://ubuntu-mate.org/blog/ubuntu-mate-jammy-jellyfish-release-notes/)  |
| [Ubuntu Budgie](https://ubuntubudgie.org/) | [ubuntu-budgie-22.04.3-desktop-amd64.iso](https://cdimage.ubuntu.com/ubuntu-budgie/releases/22.04/release/ubuntu-budgie-22.04.3-desktop-amd64.iso) | [Ubuntu Budgie 22.04 LTS Release Notes](https://ubuntubudgie.org/2022/03/ubuntu-budgie-22-04-lts-release-notes/) |
| [Ubuntu Studio](https://ubuntustudio.org/) | [ubuntustudio-22.04.3-dvd-amd64.iso](https://cdimage.ubuntu.com/ubuntustudio/releases/22.04/release/ubuntustudio-22.04.3-dvd-amd64.iso) | [Ubuntu Studio 22.04 LTS Released](https://ubuntustudio.org/2022/04/ubuntu-studio-22-04-lts-released/) ([Release Notes](https://ubuntustudio.org/ubuntu-studio-22-04-lts-release-notes/)) |


## 安裝 wget

``` sh
sudo apt-get install wget
```

## download.txt

產生一個檔案「[download.txt](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/download/iso/22.04/download.txt)」，存入如下的內容

```
https://releases.ubuntu.com/22.04/ubuntu-22.04.3-desktop-amd64.iso
https://releases.ubuntu.com/22.04/ubuntu-22.04.3-live-server-amd64.iso
https://cdimage.ubuntu.com/xubuntu/releases/22.04/release/xubuntu-22.04.3-desktop-amd64.iso
https://cdimage.ubuntu.com/kubuntu/releases/22.04/release/kubuntu-22.04.3-desktop-amd64.iso
https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/lubuntu-22.04.3-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntu-mate/releases/22.04/release/ubuntu-mate-22.04.3-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntu-budgie/releases/22.04/release/ubuntu-budgie-22.04.3-desktop-amd64.iso
https://cdimage.ubuntu.com/ubuntustudio/releases/22.04/release/ubuntustudio-22.04.3-dvd-amd64.iso
```

## download.sh


產生一個檔案「[download.sh](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/download/iso/22.04/download.sh)」，存入如下的內容

``` sh
wget -c -i download.txt
```

執行下面的指令，設定「可執行」

``` sh
chmod 755 download.sh
```

或是執行下面的指令，設定「可執行」

``` sh
chmod +x download.sh
```

或是執行下面的指令，設定「可執行」

``` sh
chmod u+x download.sh
```

接著就可以執行下面的指令，下載

``` sh
./download.sh
```

或是沒有將「download.sh」設定「可執行」，

可以執行下面指令

``` sh
sh download.sh
```

當然也可以直接執行「`wget -c -i download.txt`」這行指令。


## 相關連結

* [How to verify your Ubuntu download](https://ubuntu.com/tutorials/how-to-verify-ubuntu#1-overview)
* [live-custom-ubuntu-from-scratch](https://github.com/mvallim/live-custom-ubuntu-from-scratch)
* [regolith-ubuntu-iso-builder](https://github.com/regolith-linux/regolith-ubuntu-iso-builder)
* [ventoy 探索筆記](https://samwhelp.github.io/note-about-ventoy/)
