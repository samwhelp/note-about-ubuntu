#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p iso-root
}

mount_iso () {
	mount_ubuntu_mate
}

mount_ubuntu_mate () {
	sudo mount -o loop ubuntu-mate-22.04.3-desktop-amd64.iso iso-root
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
