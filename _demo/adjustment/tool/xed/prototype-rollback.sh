#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##
xed_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_xed.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: xed"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_xed.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_xed.gschema.override"

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
main_prototype_rollback () {
	xed_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
