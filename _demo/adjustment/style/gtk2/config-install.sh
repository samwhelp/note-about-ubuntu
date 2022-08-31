#!/usr/bin/env bash

set -e


################################################################################
### Head: gtk2
##
gtk2_config_install () {

	echo "## Config: gtk2"
	echo

	echo "install -Dm644 ./config/gtk2/.gtkrc-2.0 $HOME/.gtkrc-2.0"
	install -Dm644 "./config/gtk2/.gtkrc-2.0" "$HOME/.gtkrc-2.0"

	echo
}
##
### Tail: gtk2
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	gtk2_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
