#!/usr/bin/env bash

set -e


################################################################################
### Head: gedit
##
gedit_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_gedit.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gedit"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_gedit.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_gedit.gschema.override"

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
main_prototype_rollback () {
	gedit_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
