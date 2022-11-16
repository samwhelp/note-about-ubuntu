#!/usr/bin/env bash

set -e


################################################################################
### Head: lxterminal
##
lxterminal_config_install () {

	echo "## Config: lxterminal"
	echo

	echo "mkdir -p $HOME/.config/lxterminal"
	mkdir -p "$HOME/.config/lxterminal"

	echo "install -Dm644 ./config/lxterminal/lxterminal.conf $HOME/.config/lxterminal/lxterminal.conf"
	install -Dm644 "./config/lxterminal/lxterminal.conf" "$HOME/.config/lxterminal/lxterminal.conf"

	echo
}
##
### Tail: lxterminal
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	lxterminal_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
