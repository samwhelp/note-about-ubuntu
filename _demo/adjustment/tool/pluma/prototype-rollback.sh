#!/usr/bin/env bash

set -e


################################################################################
### Head: pluma
##
pluma_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_pluma.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: pluma"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_pluma.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_pluma.gschema.override"

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
main_prototype_rollback () {
	pluma_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
