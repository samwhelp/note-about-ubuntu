---
title: 字型的安裝與設定
nav_order: 5003
has_children: false
parent: 系統環境微調
grand_parent: 微調
---


# 字型的安裝與設定


## 設定字型採用順序

* [設定腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/font-setting/font-match-order)


## 安裝字型

| 字型 |
| --- |
| [noto](#noto) |
| [liberation](#liberation) |


## noto

### 查詢

執行

``` sh
apt-cache search fonts | grep noto
```

顯示

```
fonts-noto-cjk - "No Tofu" font families with large Unicode coverage (CJK regular and bold)
fonts-noto-cjk-extra - "No Tofu" font families with large Unicode coverage (CJK all weight)
fonts-noto-color-emoji - color emoji font from Google
fonts-noto-core - "No Tofu" font families with large Unicode coverage (core)
fonts-noto-mono - "No Tofu" monospaced font family with large Unicode coverage
fonts-noto-ui-core - "No Tofu" font families with large Unicode coverage (UI core)
fonts-noto - metapackage to pull in all Noto fonts
fonts-noto-extra - "No Tofu" font families with large Unicode coverage (extra)
fonts-noto-hinted - obsolete metapackage to pull in a subset of Noto fonts
fonts-noto-ui-extra - "No Tofu" font families with large Unicode coverage (UI extra)
fonts-noto-unhinted - "No Tofu" font families with large Unicode coverage (unhinted)
python3-nototools - font support tools from the Noto Fonts project
```

執行下面指令，觀看安裝情形

``` sh
dpkg -l *fonts-noto*
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                   Version              Architecture Description
+++-======================-====================-============-==========================================================================
un  fonts-noto             <none>               <none>       (no description available)
ii  fonts-noto-cjk         1:20220127+repack1-1 all          "No Tofu" font families with large Unicode coverage (CJK regular and bold)
un  fonts-noto-cjk-extra   <none>               <none>       (no description available)
ii  fonts-noto-color-emoji 2.034-1              all          color emoji font from Google
un  fonts-noto-core        <none>               <none>       (no description available)
ii  fonts-noto-mono        20201225-1build1     all          "No Tofu" monospaced font family with large Unicode coverage
un  fonts-noto-unhinted    <none>               <none>       (no description available)
```

看起來已經安裝了

* [fonts-noto-cjk](https://packages.ubuntu.com/jammy/fonts-noto-cjk)
* [fonts-noto-color-emoji](https://packages.ubuntu.com/jammy/fonts-noto-color-emoji)
* [fonts-noto-mono](https://packages.ubuntu.com/jammy/fonts-noto-mono)

### 安裝


若要安裝「[fonts-noto-cjk](https://packages.ubuntu.com/jammy/fonts-noto-cjk)」，執行下面指令

``` sh
sudo apt-get install fonts-noto-cjk
```

若要安裝「[fonts-noto-mono](https://packages.ubuntu.com/jammy/fonts-noto-mono)」，執行下面指令

``` sh
sudo apt-get install fonts-noto-mono
```


若要安裝「[fonts-noto-color-emoji](https://packages.ubuntu.com/jammy/fonts-noto-color-emoji)」，執行下面指令

``` sh
sudo apt-get install fonts-noto-color-emoji
```


## liberation


### 查詢

執行

``` sh
apt-cache search liberation
```

顯示

```
fonts-liberation - Fonts with the same metrics as Times, Arial and Courier
fonts-liberation2 - Fonts with the same metrics as Times, Arial and Courier (v2)
libstaroffice-0.0-0 - Import filter library to import all StarOffice documents
libstaroffice-dev - Import filter library to import all StarOffice documents -- development
libstaroffice-doc - Import filter library to import all StarOffice documents -- documentation
libstaroffice-tools - Import filter library to import all StarOffice documents -- tools
r-cran-fontliberation - Liberation Fonts for GNU R
ttf-mscorefonts-installer - Installer for Microsoft TrueType core fonts
```

執行

``` sh
apt-cache search font | grep liberation
```

顯示

```
fonts-liberation - Fonts with the same metrics as Times, Arial and Courier
fonts-liberation2 - Fonts with the same metrics as Times, Arial and Courier (v2)
r-cran-fontliberation - Liberation Fonts for GNU R
```

執行下面指令，觀看安裝情形

``` sh
dpkg -l *liberation*
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name              Version      Architecture Description
+++-=================-============-============-============================================================
ii  fonts-liberation  1:1.07.4-11  all          Fonts with the same metrics as Times, Arial and Courier
ii  fonts-liberation2 2.1.5-1      all          Fonts with the same metrics as Times, Arial and Courier (v2)
```

看起來已經安裝了

* [fonts-liberation](https://packages.ubuntu.com/jammy/fonts-liberation)
* [fonts-liberation2](https://packages.ubuntu.com/jammy/fonts-liberation2)

### 安裝

若要安裝「[fonts-liberation](https://packages.ubuntu.com/jammy/fonts-liberation)」，執行下面指令

``` sh
sudo apt-get install fonts-liberation
```

若要安裝「[fonts-liberation](https://packages.ubuntu.com/jammy/fonts-liberation2)」，執行下面指令

``` sh
sudo apt-get install fonts-liberation2
```


## nerd-fonts / liberation (Literation Mono Nerd Font)


* https://github.com/ryanoasis/nerd-fonts
* https://github.com/ryanoasis/nerd-fonts/releases
* https://github.com/ryanoasis/nerd-fonts/releases/tag/v2.1.0
* https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip


``` sh
wget -c 'https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/LiberationMono.zip'
mkdir -p LiberationMono
unzip -d LiberationMono LiberationMono.zip

cd LiberationMono
mkdir -p ~/.local/share/fonts
cp *.ttf ~/.local/share/fonts
```


## 相關文章

* Ubuntu 問答集 / [字型安裝設定](http://samwhelp.github.io/book-ubuntu-qna/read/subject/font/)
