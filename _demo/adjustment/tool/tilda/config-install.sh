#!/usr/bin/env bash

set -e


################################################################################
### Head: tilda
##
tilda_config_install () {

	echo "## Config: tilda"
	echo

	echo "mkdir -p $HOME/.config/tilda"
	mkdir -p "$HOME/.config/tilda"

	echo "install -Dm644 ./config/tilda/config_0 $HOME/.config/tilda/config_0"
	install -Dm644 "./config/tilda/config_0" "$HOME/.config/tilda/config_0"


	echo

	echo "mkdir -p $HOME/.config/autostart"
	mkdir -p "$HOME/.config/autostart"

	echo "install -Dm644 ./config/tilda/asset/tilda.desktop $HOME/.config/autostart/tilda.desktop"
	install -Dm644 "./config/tilda/asset/tilda.desktop" "$HOME/.config/autostart/tilda.desktop"

	echo
}
##
### Tail: tilda
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	tilda_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
