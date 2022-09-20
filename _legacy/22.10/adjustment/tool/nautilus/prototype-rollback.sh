#!/usr/bin/env bash

set -e


################################################################################
### Head: nautilus
##
nautilus_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_nautilus.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: nautilus"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_nautilus.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_nautilus.gschema.override"

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
main_prototype_rollback () {
	nautilus_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
