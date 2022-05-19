#!/usr/bin/env bash

##
## * https://github.com/samwhelp/tool-initramfs-extract
## * https://github.com/samwhelp/tool-initramfs-extract/blob/main/src/asset/bin/initramfs-extract
## * https://raw.githubusercontent.com/samwhelp/tool-initramfs-extract/main/src/asset/bin/initramfs-extract
##
##
## ``` sh
## sudo apt-get intall curl
## curl -fLo ~/.local/bin/initramfs-extract --create-dirs https://raw.githubusercontent.com/samwhelp/tool-initramfs-extract/main/src/asset/bin/initramfs-extract
## chmod 755 ~/.local/bin/initramfs-extract
## ```
##


initramfs-extract iso-root/casper/initrd initrd-root


## or use
#unmkinitramfs iso-root/casper/initrd initramfs
