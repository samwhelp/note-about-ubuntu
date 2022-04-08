#!/usr/bin/env bash

set -e


################################################################################
### Head: mpv
##
mpv_config_install () {

	echo "## Config: mpv"
	echo

	echo "mkdir -p $HOME/.config/mpv"
	mkdir -p "$HOME/.config/mpv"


	echo "install -Dm644 ./config/mpv/mpv.conf $HOME/.config/mpv/mpv.conf"
	install -Dm644 "./config/mpv/mpv.conf" "$HOME/.config/mpv/mpv.conf"


	echo
}
##
### Tail: mpv
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	mpv_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
