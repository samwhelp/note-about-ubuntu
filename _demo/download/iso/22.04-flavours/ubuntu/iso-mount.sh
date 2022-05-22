#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p iso-root
}

mount_iso () {
	mount_ubuntu
}

mount_ubuntu () {
	sudo mount -o loop ubuntu-22.04-desktop-amd64.iso iso-root
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
