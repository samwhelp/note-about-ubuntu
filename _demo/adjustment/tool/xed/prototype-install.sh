#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##
xed_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_xed.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: xed"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/xed/schemas/50_xed.gschema.override /usr/share/glib-2.0/schemas/50_xed.gschema.override"
	sudo install -Dm644 "./config/xed/schemas/50_xed.gschema.override" "/usr/share/glib-2.0/schemas/50_xed.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: xed
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	xed_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
