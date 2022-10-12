#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_prototype_install () {

	##
	## /etc/dconf/db/site.d/50_mate-keybind-custom
	##


	echo
	echo "##"
	echo "## Prototype: mate"
	echo "##"
	echo

	echo "sudo mkdir -p /etc/dconf/profile"
	sudo mkdir -p "/etc/dconf/profile"

	echo "sudo install -Dm644 ./config/mate/profile/user /etc/dconf/profile/user"
	sudo install -Dm644 "./config/mate/profile/user" "/etc/dconf/profile/user"


	echo "sudo mkdir -p /etc/dconf/db/site.d"
	sudo mkdir -p "/etc/dconf/db/site.d"

	echo "sudo install -Dm644 ./config/mate/schemas/50_mate-keybind-custom /etc/dconf/db/site.d/50_mate-keybind-custom"
	sudo install -Dm644 "./config/mate/schemas/50_mate-keybind-custom" "/etc/dconf/db/site.d/50_mate-keybind-custom"


	echo "sudo dconf update"
	sudo dconf update

	echo
	echo

	echo "dconf dump /org/mate/desktop/keybindings/"
	dconf dump /org/mate/desktop/keybindings/

	#echo "dconf dump / | grep 'org/mate/desktop/keybindings' -A 4"
	#dconf dump / | grep 'org/mate/desktop/keybindings' -A 4


	echo

}
##
### Tail: mate
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	mate_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
