#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_prototype_rollback () {

	##
	## /etc/dconf/db/site.d/50_cinnamon-keybind-custom
	##

	echo
	echo "##"
	echo "## Prototype: cinnamon"
	echo "##"
	echo


	echo "sudo rm -rf /etc/dconf/db/site.d/50_cinnamon-keybind-custom"
	sudo rm -rf "/etc/dconf/db/site.d/50_cinnamon-keybind-custom"

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
main_prototype_rollback () {
	cinnamon_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
