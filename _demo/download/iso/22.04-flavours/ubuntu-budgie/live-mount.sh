#!/usr/bin/env bash

prepare_mount_dir () {
	mkdir -p live-root
}

mount_live () {
	mount_squashfs
}

mount_squashfs () {
	sudo mount -o loop iso-root/casper/filesystem.squashfs live-root
}

__main__ () {
	prepare_mount_dir
	mount_live
}

__main__
