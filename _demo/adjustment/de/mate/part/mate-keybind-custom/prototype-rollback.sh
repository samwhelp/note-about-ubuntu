#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_prototype_rollback () {

	##
	## /etc/dconf/db/site.d/50_mate-keybind-custom
	##

	echo
	echo "##"
	echo "## Prototype: mate"
	echo "##"
	echo


	echo "sudo rm -rf /etc/dconf/db/site.d/50_mate-keybind-custom"
	sudo rm -rf "/etc/dconf/db/site.d/50_mate-keybind-custom"

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
main_prototype_rollback () {
	mate_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
