#!/usr/bin/env bash


prepare_package () {
	sudo apt-get install wget curl
}

prepare_helper () {
	prepare_helper_initramfs_extract
}

prepare_helper_initramfs_extract () {
	curl -fLo ~/.local/bin/initramfs-extract --create-dirs https://raw.githubusercontent.com/samwhelp/tool-initramfs-extract/main/src/asset/bin/initramfs-extract
	chmod 755 ~/.local/bin/initramfs-extract
}

__main__ () {
	prepare_package
	prepare_helper
}

__main__
