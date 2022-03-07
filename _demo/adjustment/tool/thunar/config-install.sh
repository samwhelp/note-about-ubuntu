#!/usr/bin/env bash

set -e


################################################################################
### Head: thunar
##
thunar_config_install () {

	echo "## Config: thunar"
	echo

	echo "mkdir -p $HOME/.config/Thunar"
	mkdir -p "$HOME/.config/Thunar"


	echo "install -Dm644 ./config/thunar/uca.xml $HOME/.config/Thunar/uca.xml"
	install -Dm644 "./config/thunar/uca.xml" "$HOME/.config/Thunar/uca.xml"

	echo
}
##
### Tail: thunar
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	thunar_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
