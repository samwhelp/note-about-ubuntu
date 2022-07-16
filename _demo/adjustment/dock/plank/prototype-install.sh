#!/usr/bin/env bash

set -e


################################################################################
### Head: plank
##
plank_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.xml
	## /usr/share/glib-2.0/schemas/50_plank.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: plank"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/plank/schemas/50_plank.gschema.override /usr/share/glib-2.0/schemas/50_plank.gschema.override"
	sudo install -Dm644 "./config/plank/schemas/50_plank.gschema.override" "/usr/share/glib-2.0/schemas/50_plank.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: plank
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	plank_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
