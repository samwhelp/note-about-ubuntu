#!/usr/bin/env bash

set -e


################################################################################
### Head: pluma
##
pluma_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_pluma.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: pluma"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/pluma/schemas/50_pluma.gschema.override /usr/share/glib-2.0/schemas/50_pluma.gschema.override"
	sudo install -Dm644 "./config/pluma/schemas/50_pluma.gschema.override" "/usr/share/glib-2.0/schemas/50_pluma.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: pluma
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	pluma_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
