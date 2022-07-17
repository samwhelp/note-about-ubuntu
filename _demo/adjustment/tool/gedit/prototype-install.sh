#!/usr/bin/env bash

set -e


################################################################################
### Head: gedit
##
gedit_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_gedit.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gedit"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/gedit/schemas/50_gedit.gschema.override /usr/share/glib-2.0/schemas/50_gedit.gschema.override"
	sudo install -Dm644 "./config/gedit/schemas/50_gedit.gschema.override" "/usr/share/glib-2.0/schemas/50_gedit.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gedit
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	gedit_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
