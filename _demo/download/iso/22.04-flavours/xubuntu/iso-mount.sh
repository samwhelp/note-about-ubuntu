#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p iso-root
}

mount_iso () {
	mount_xubuntu
}

mount_xubuntu () {
	sudo mount -o loop xubuntu-22.04.3-desktop-amd64.iso iso-root
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
