---
title: xfce4-terminal
nav_order: 6002
has_children: false
parent: 工具微調
grand_parent: 微調
---


# xfce4-terminal

* [微調腳本](https://github.com/samwhelp/note-about-ubuntu/tree/gh-pages/_demo/adjustment/tool/xfce4-terminal)


## 主題

* [設定檔路徑](#設定檔路徑)
* [colorschemes](#colorschemes)
* [按鍵綁定](#按鍵綁定)
* [應用工具](#應用工具)


## Package

* Ubuntu Package / [xfce4-terminal](https://packages.ubuntu.com/jammy/xfce4-terminal)


## Manpage

* $ man [xfce4-terminal](http://manpages.ubuntu.com/manpages/jammy/en/man1/xfce4-terminal.1.html)


## 設定檔路徑

* [~/.config/xfce4/terminal/terminalrc](https://github.com/samwhelp/note-about-ubuntu/blob/gh-pages/_demo/adjustment/tool/xfce4-terminal/config/xfce4-terminal/terminalrc)


## colorschemes

* /usr/share/xfce4/terminal/colorschemes/
* ~/.local/share/xfce4/terminal/colorschemes


執行

```
ls -1 /usr/share/xfce4/terminal/colorschemes/
```

顯示

```
black-on-white.theme
dark-pastels.theme
green-on-black.theme
solarized-dark.theme
solarized-light.theme
tango.theme
white-on-black.theme
xterm.theme
```

### nord

* [https://github.com/arcticicestudio/nord-xfce-terminal](https://github.com/arcticicestudio/nord-xfce-terminal)

執行下面指令安裝

``` sh
git clone https://github.com/arcticicestudio/nord-xfce-terminal.git
install -Dm644 nord-xfce-terminal/src/nord.theme ~/.local/share/xfce4/terminal/colorschemes/nord.theme
```

### dracula

* [https://github.com/dracula/xfce4-terminal](https://github.com/dracula/xfce4-terminal)
* [https://draculatheme.com/xfce4-terminal](https://draculatheme.com/xfce4-terminal)

執行下面指令安裝

``` sh
git clone https://github.com/dracula/xfce4-terminal.git dracula-xfce4-terminal
install -Dm644 dracula-xfce4-terminal/Dracula.theme ~/.local/share/xfce4/terminal/colorschemes/Dracula.theme
```


### gruvbox

* [xfce4-terminal-colorschemes](https://github.com/vifo/xfce4-terminal-colorschemes)
* [base16-xfce4-terminal](https://github.com/afq984/base16-xfce4-terminal)


## 按鍵綁定

### 視窗

| 按鍵組合 | 功能 |
| --- | --- |
| `Ctrl + Shift + n` | 開啟新的 Terminal |
| `Ctrl + Shift + q` | 關閉目前 Terminal |

### 頁籤

| 按鍵組合 | 功能 |
| --- | --- |
| `Ctrl + Shift + t` | 開啟新的頁籤 |
| `Ctrl + Shift + w` | 關閉目前頁籤 |


| 按鍵組合 | 功能 |
| --- | --- |
| `Ctrl + PageUp` | 切換到上一個頁籤 |
| `Ctrl + PageDown` | 切換到下一個頁籤 |
| `Ctrl + Shift + PageUp` | 將目前頁籤與下一個頁籤交換位置 |
| `Ctrl + Shift + PageDown` | 將目前頁籤與上一個頁籤交換位置 |

| 按鍵組合 | 功能 |
| --- | --- |
| `Ctrl + Shift + a` | 選擇全部 |
| `Ctrl + Shift + c` | 複製 |
| `Ctrl + Shift + v` | 貼上 |

| 按鍵組合 | 功能 |
| --- | --- |
| `Ctrl + Shift + f` | 查詢 |

| 按鍵組合 | 功能 |
| --- | --- |
| `Ctrl + Shift + s` | 設定標題 |

| 按鍵組合 | 功能 |
| --- | --- |
| `F11` | 全螢幕 |


## 應用工具

應用「xfce4-terminal --tab」這個功能，衍生的輔助工具

| 工具 | For Editor |
| --- | --- |
| [xftt](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftt) | 開啟新Tab，切換到指定資料夾 |
| [xfted](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xfted) | 根據「EDITOR」的設定 |
| [xftvim](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftvim) | [vim](https://www.vim.org/) |
| [xftnvim](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftnvim) | [nvim](https://neovim.io/) |
| [xftlvim](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftlvim) | [lvim](https://github.com/ChristianChiarulli/LunarVim) |
| [xftmicro](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftmicro) | [micro](https://micro-editor.github.io/) |
| [xftkak](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftkak) | [kak](https://kakoune.org/) |
| [xftnano](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftnano) | [nano](https://www.nano-editor.org/) |
| [xftne](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftne) | [ne](http://ne.di.unimi.it/) |
| [xftemacs](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftemacs) | [emacs](https://www.gnu.org/software/emacs/) |
| [xftmced](https://samwhelp.github.io/tool-xfteditor/read/project/xfteditor/xftmced) | [mcedit](https://midnight-commander.org/) |
