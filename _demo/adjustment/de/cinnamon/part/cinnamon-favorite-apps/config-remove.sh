#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_remove () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_keybind_custom_remove

	return 0

	echo
}











cinnamon_keybind_custom_remove () {




	##
	## $ gsettings list-recursively org.cinnamon.desktop.keybindings.custom-keybinding:/
	##
	## ```
	## org.cinnamon.desktop.keybindings.custom-keybinding binding @as []
	## org.cinnamon.desktop.keybindings.custom-keybinding command ''
	## org.cinnamon.desktop.keybindings.custom-keybinding name ''
	## ```
	##
	## $ gsettings list-recursively org.cinnamon.desktop.keybindings.custom-keybinding:/org/cinnamon/desktop/keybindings/custom-keybindings/
	##
	##


	## Clear old
	dconf reset -f /org/cinnamon/desktop/keybindings/custom-keybindings/

	## Dump all
	#dconf dump /org/cinnamon/desktop/keybindings/custom-keybindings/

	#gsettings reset org.cinnamon.desktop.keybindings custom-list

	gsettings set org.cinnamon.desktop.keybindings custom-list "['__dummy__']"




	echo
	echo "##"
	echo "## Dump: keybindings_custom"
	echo "##"
	echo
	echo "dconf dump /org/cinnamon/desktop/keybindings/custom-keybindings/"
	echo
	dconf dump /org/cinnamon/desktop/keybindings/custom-keybindings/
	echo

	echo
	echo "gsettings get org.cinnamon.desktop.keybindings custom-list"
	echo
	gsettings get org.cinnamon.desktop.keybindings custom-list
	echo

}

##
### Tail: cinnamon
################################################################################







################################################################################
### Head: main
##
main_config_remove () {

	cinnamon_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
