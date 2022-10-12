#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_remove () {

	echo
	echo "## Config: mate"
	echo

	mate_keybind_custom_remove

	return 0

	echo
}











mate_keybind_custom_remove () {




	##
	## $ gsettings list-recursively org.mate.desktop.keybindings.custom-keybinding:/
	##
	## ```
	## org.mate.desktop.keybindings.custom-keybinding binding @as []
	## org.mate.desktop.keybindings.custom-keybinding command ''
	## org.mate.desktop.keybindings.custom-keybinding name ''
	## ```
	##
	## $ gsettings list-recursively org.mate.desktop.keybindings.custom-keybinding:/org/mate/desktop/keybindings/
	##
	##


	## Clear old
	dconf reset -f /org/mate/desktop/keybindings/

	## Dump all
	#dconf dump /org/mate/desktop/keybindings/

	#gsettings reset org.mate.desktop.keybindings custom-list

	#gsettings set org.mate.desktop.keybindings custom-list "['__dummy__']"




	echo
	echo "##"
	echo "## Dump: keybindings_custom"
	echo "##"
	echo
	echo "dconf dump /org/mate/desktop/keybindings/"
	echo
	dconf dump /org/mate/desktop/keybindings/
	echo

	echo
	#echo "gsettings get org.mate.desktop.keybindings custom-list"
	echo
	#gsettings get org.mate.desktop.keybindings custom-list
	echo

}

##
### Tail: mate
################################################################################







################################################################################
### Head: main
##
main_config_remove () {

	mate_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
