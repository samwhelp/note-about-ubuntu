#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-terminal
##
gnome_terminal_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-terminal"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/gnome-terminal/schemas/50_gnome-terminal.gschema.override /usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override"
	sudo install -Dm644 "./config/gnome-terminal/schemas/50_gnome-terminal.gschema.override" "/usr/share/glib-2.0/schemas/50_gnome-terminal.gschema.override"

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
main_prototype_install () {
	gnome_terminal_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
