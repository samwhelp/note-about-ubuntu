#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_prototype_remove () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-shell-config-main.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-shell"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_gnome-shell-config-main.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_gnome-shell-config-main.gschema.override"


	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gnome-shell
################################################################################


################################################################################
### Head: main
##
main_prototype_remove () {
	gnome_shell_prototype_remove
}
## start
main_prototype_remove

##
### Tail: main
################################################################################
