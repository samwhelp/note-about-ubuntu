#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-console
##
gnome_text_editor_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-console.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-console"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/gnome-console/schemas/50_gnome-console.gschema.override /usr/share/glib-2.0/schemas/50_gnome-console.gschema.override"
	sudo install -Dm644 "./config/gnome-console/schemas/50_gnome-console.gschema.override" "/usr/share/glib-2.0/schemas/50_gnome-console.gschema.override"

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
main_prototype_install () {
	gnome_text_editor_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
