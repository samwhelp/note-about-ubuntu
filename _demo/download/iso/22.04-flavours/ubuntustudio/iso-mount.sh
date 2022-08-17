#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p iso-root
}

mount_iso () {
	mount_ubuntustudio
}

mount_ubuntustudio () {
	sudo mount -o loop ubuntustudio-22.04.1-dvd-amd64.iso iso-root
}

__main__ () {
	prepare_mount_dir
	mount_iso
}

__main__
