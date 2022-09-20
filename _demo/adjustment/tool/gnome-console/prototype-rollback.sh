#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-console
##
gnome_console_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-console.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-console"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_gnome-console.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_gnome-console.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gnome-console
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	gnome_console_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
