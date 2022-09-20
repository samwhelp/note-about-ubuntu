#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-terminal
##
gnome_terminal_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-terminal"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gnome-terminal
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	gnome_terminal_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
