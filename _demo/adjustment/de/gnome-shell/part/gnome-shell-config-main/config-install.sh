#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_config_main

	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / config
##

gnome_shell_config_main () {


	echo "TODO:"


}

##
### Tail: gnome-shell / config
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_shell_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
