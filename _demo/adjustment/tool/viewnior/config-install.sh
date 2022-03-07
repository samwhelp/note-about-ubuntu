#!/usr/bin/env bash

set -e


################################################################################
### Head: viewnior
##
viewnior_config_install () {

	echo "## Config: viewnior"
	echo

	echo "mkdir -p $HOME/.config/viewnior"
	mkdir -p "$HOME/.config/viewnior"


	echo "install -Dm644 ./config/viewnior/viewnior.conf $HOME/.config/viewnior/viewnior.conf"
	install -Dm644 "./config/viewnior/viewnior.conf" "$HOME/.config/viewnior/viewnior.conf"


	echo
}
##
### Tail: viewnior
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	viewnior_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
