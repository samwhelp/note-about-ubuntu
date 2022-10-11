#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_prototype_install () {

	##
	## /etc/dconf/db/site.d/50_gnome-shell-keybind-custom
	##


	echo
	echo "##"
	echo "## Prototype: gnome-shell"
	echo "##"
	echo

	echo "sudo mkdir -p /etc/dconf/profile"
	sudo mkdir -p "/etc/dconf/profile"

	echo "sudo install -Dm644 ./config/gnome-shell/profile/user /etc/dconf/profile"
	sudo install -Dm644 "./config/gnome-shell/profile/user" "/etc/dconf/profile"


	echo "sudo mkdir -p /etc/dconf/db/site.d"
	sudo mkdir -p "/etc/dconf/db/site.d"

	echo "sudo install -Dm644 ./config/gnome-shell/schemas/50_gnome-shell-keybind-custom /etc/dconf/db/site.d/50_gnome-shell-keybind-custom"
	sudo install -Dm644 "./config/gnome-shell/schemas/50_gnome-shell-keybind-custom" "/etc/dconf/db/site.d/50_gnome-shell-keybind-custom"


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
main_prototype_install () {
	gnome_shell_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
