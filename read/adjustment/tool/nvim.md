---
title: nvim
nav_order: 6021
has_children: false
parent: 工具微調
grand_parent: 微調
---


# nvim

## 相關筆記

* [vim 探索筆記](https://samwhelp.github.io/note-about-vim/)
* [nvim 探索筆記](https://samwhelp.github.io/note-about-nvim/)


## 相關微調

* [修改預設 editor](https://samwhelp.github.io/note-about-ubuntu/read/adjustment/env/editor.html)


## Link

* GitHub / Neovim / Wiki / Installing Neovim / [Ubuntu](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)


## PPA


### unstable

* PPA / [unstable](https://launchpad.net/~neovim-ppa/+archive/ubuntu/unstable)


``` sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
```

source-list

```
deb https://ppa.launchpadcontent.net/neovim-ppa/unstable/ubuntu jammy main
deb-src https://ppa.launchpadcontent.net/neovim-ppa/unstable/ubuntu jammy main
```

### stable

* PPA / [stable](https://launchpad.net/~neovim-ppa/+archive/ubuntu/stable)


``` sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update
```

source-list

```
deb https://ppa.launchpadcontent.net/neovim-ppa/stable/ubuntu jammy main
deb-src https://ppa.launchpadcontent.net/neovim-ppa/stable/ubuntu jammy main
```


## Install


``` sh
sudo apt-get install software-properties-common
```

選擇「PPA / Unstable」

``` sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
```

安裝「neovim」

``` sh
sudo apt-get install neovim python3-pynvim
```

執行

```
nvim -v
```

顯示

```
NVIM v0.8.0-dev
...略...
```


## 安裝  LunarVim


``` sh
sudo apt-get install yarn make
```

> [LunarVim](https://github.com/LunarVim/LunarVim)

``` sh
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```


> Nvim 探索筆記 / [LunarVim](https://samwhelp.github.io/note-about-nvim/read/case/lunarvim.html)


``` sh
curl -fLo "$HOME/.config/lvim/config.lua" --create-dirs \
	'https://raw.githubusercontent.com/samwhelp/note-about-nvim/gh-pages/_demo/lua/case/lunarvim/config/lvim/config.lua'
```


``` sh
mkdir -p ~/.local/bin/
cd ~/.local/bin/
ln -sf lvim vi
```

``` sh
lvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```


> [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

> [font-match-order](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/env/font-setting/font-match-order)

> [nerd-fonts / liberation](https://samwhelp.github.io/note-about-ubuntu/read/adjustment/env/font.html#nerd-fonts--liberation-literation-mono-nerd-font)

``` sh
mkdir -p ~/.local/share/fonts/nerd-fonts
curl -fLo "$HOME/.local/share/fonts/nerd-fonts/Literation Mono Nerd Font Complete.ttf" 'https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/LiberationMono/complete/Literation%20Mono%20Nerd%20Font%20Complete.ttf'

```

``` sh
fc-cache -fv ~/.local/share/fonts/
```
