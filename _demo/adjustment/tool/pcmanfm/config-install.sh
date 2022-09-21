#!/usr/bin/env bash

set -e


################################################################################
### Head: pcmanfm
##
pcmanfm_config_install () {

	echo "## Config: pcmanfm"
	echo

	echo "mkdir -p $HOME/.config/pcmanfm/default"
	mkdir -p "$HOME/.config/pcmanfm/default"


	echo "install -Dm644 ./config/pcmanfm/default/pcmanfm.conf $HOME/.config/pcmanfm/default/pcmanfm.conf"
	install -Dm644 "./config/pcmanfm/default/pcmanfm.conf" "$HOME/.config/pcmanfm/default/pcmanfm.conf"

	echo "install -Dm644 ./config/libfm/libfm.conf $HOME/.config/libfm/libfm.conf"
	install -Dm644 "./config/libfm/libfm.conf" "$HOME/.config/libfm/libfm.conf"

	echo
}
##
### Tail: pcmanfm
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	pcmanfm_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
