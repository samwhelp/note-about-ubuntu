#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_mate-keybind-main.gschema.override
	##

	##
	## dconf dump /org/mate/marco/window-keybindings/
	## dconf dump /org/mate/marco/global-keybindings/
	## dconf dump /org/mate/marco/keybinding-commands/
	##


	echo
	echo "##"
	echo "## Prototype: mate"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/mate/schemas/50_mate-keybind-main.gschema.override /usr/share/glib-2.0/schemas/50_mate-keybind-main.gschema.override"
	sudo install -Dm644 "./config/mate/schemas/50_mate-keybind-main.gschema.override" "/usr/share/glib-2.0/schemas/50_mate-keybind-main.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

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
