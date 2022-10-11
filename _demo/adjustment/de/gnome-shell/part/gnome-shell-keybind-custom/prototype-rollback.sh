#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_prototype_rollback () {

	##
	## /etc/dconf/db/site.d/50_gnome-shell-keybind-custom
	##

	echo
	echo "##"
	echo "## Prototype: gnome-shell"
	echo "##"
	echo


	echo "sudo rm -rf /etc/dconf/db/site.d/50_gnome-shell-keybind-custom"
	sudo rm -rf "/etc/dconf/db/site.d/50_gnome-shell-keybind-custom"

	echo "sudo dconf update"
	sudo dconf update

	echo
	echo

	echo "dconf dump /org/gnome/settings-daemon/plugins/media-keys/"
	dconf dump /org/gnome/settings-daemon/plugins/media-keys/


	echo
}
##
### Tail: gnome-shell
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	gnome_shell_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
