---
title: zellij
nav_order: 8010
has_children: false
parent: 工具
---



# zellij


## Link

* [https://github.com/zellij-org/zellij/releases/tag/v0.27.0](https://github.com/zellij-org/zellij/releases/tag/v0.27.0)
* [https://zellij.dev/documentation/configuration.html](https://zellij.dev/documentation/configuration.html)


## Install

* [releases](https://github.com/zellij-org/zellij/releases/) / [0.30.0](https://github.com/zellij-org/zellij/releases/tag/v0.30.0)

``` sh
wget -c 'https://github.com/zellij-org/zellij/releases/download/v0.30.0/zellij-x86_64-unknown-linux-musl.tar.gz'

tar xf zellij-x86_64-unknown-linux-musl.tar.gz

mkdir -p ~/.local/bin

install -Dm755 zellij ~/.local/bin/zellij
```

## Config

``` sh
mkdir -p ~/.config/zellij

zellij setup --dump-config > ~/.config/zellij/config.yaml
```


## See Also

* [mprocs](https://samwhelp.github.io/note-about-ubuntu/read/tool/mprocs.html)
