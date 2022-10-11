#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_prototype_install () {

	##
	## /etc/dconf/db/site.d/50_cinnamon-keybind-custom
	##


	echo
	echo "##"
	echo "## Prototype: cinnamon"
	echo "##"
	echo

	echo "sudo mkdir -p /etc/dconf/profile"
	sudo mkdir -p "/etc/dconf/profile"

	echo "sudo install -Dm644 ./config/cinnamon/profile/user /etc/dconf/profile/user"
	sudo install -Dm644 "./config/cinnamon/profile/user" "/etc/dconf/profile/user"


	echo "sudo mkdir -p /etc/dconf/db/site.d"
	sudo mkdir -p "/etc/dconf/db/site.d"

	echo "sudo install -Dm644 ./config/cinnamon/schemas/50_cinnamon-keybind-custom /etc/dconf/db/site.d/50_cinnamon-keybind-custom"
	sudo install -Dm644 "./config/cinnamon/schemas/50_cinnamon-keybind-custom" "/etc/dconf/db/site.d/50_cinnamon-keybind-custom"


	echo "sudo dconf update"
	sudo dconf update

	echo
	echo

	echo "dconf dump /org/cinnamon/desktop/keybindings/"
	dconf dump /org/cinnamon/desktop/keybindings/

	#echo "dconf dump / | grep 'org/cinnamon/desktop/keybindings' -A 4"
	#dconf dump / | grep 'org/cinnamon/desktop/keybindings' -A 4


	echo

}
##
### Tail: cinnamon
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	cinnamon_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
