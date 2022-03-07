#!/usr/bin/env bash

set -e


################################################################################
### Head: breeze
##
breeze_config_install () {

	echo "## Config: breeze"
	echo

	#echo "mkdir -p $HOME/.config/xsettingsd"
	#mkdir -p "$HOME/.config/xsettingsd"


	#echo "install -Dm644 ./config/xsettingsd/xsettingsd.conf $HOME/.config/xsettingsd/xsettingsd.conf"
	#install -Dm644 "./config/xsettingsd/xsettingsd.conf" "$HOME/.config/xsettingsd/xsettingsd.conf"


	echo
}

##
### Tail: breeze
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	breeze_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
