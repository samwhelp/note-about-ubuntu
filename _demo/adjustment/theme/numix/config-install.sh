#!/usr/bin/env bash

set -e


################################################################################
### Head: numix
##
numix_config_install () {

	echo "## Config: numix"
	echo

	#echo "mkdir -p $HOME/.config/xsettingsd"
	#mkdir -p "$HOME/.config/xsettingsd"


	#echo "install -Dm644 ./config/xsettingsd/xsettingsd.conf $HOME/.config/xsettingsd/xsettingsd.conf"
	#install -Dm644 "./config/xsettingsd/xsettingsd.conf" "$HOME/.config/xsettingsd/xsettingsd.conf"


	echo
}

##
### Tail: numix
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	numix_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
