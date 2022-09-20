#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-console
##
gnome_console_config_install () {

	echo
	echo "##"
	echo "## Config: gnome-console"
	echo "##"
	echo


	##
	## dconf dump / | grep 'org/gnome/Console' -A 14
	##
	## gsettings list-recursively | grep org.gnome.Console | sort
	##

	echo "gsettings set org.gnome.Console theme 'night'"
	gsettings set org.gnome.Console theme 'night'

	echo "gsettings set org.gnome.Console scrollback-lines 10000"
	gsettings set org.gnome.Console scrollback-lines 10000

	echo "gsettings set org.gnome.Console font-scale 1.0"
	gsettings set org.gnome.Console font-scale 1.0










	echo
}



##
### Tail: gnome-console
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	gnome_console_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
