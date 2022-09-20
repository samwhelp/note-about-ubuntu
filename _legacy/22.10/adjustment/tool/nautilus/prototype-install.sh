#!/usr/bin/env bash

set -e


################################################################################
### Head: nautilus
##
nautilus_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_nautilus.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: nautilus"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/nautilus/schemas/50_nautilus.gschema.override /usr/share/glib-2.0/schemas/50_nautilus.gschema.override"
	sudo install -Dm644 "./config/nautilus/schemas/50_nautilus.gschema.override" "/usr/share/glib-2.0/schemas/50_nautilus.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: nautilus
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	nautilus_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
