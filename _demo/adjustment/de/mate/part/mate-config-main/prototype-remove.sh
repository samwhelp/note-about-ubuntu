#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_prototype_remove () {

	##
	## /usr/share/glib-2.0/schemas/50_mate-config-main.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: mate"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_mate-config-main.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_mate-config-main.gschema.override"


	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: mate
################################################################################


################################################################################
### Head: main
##
main_prototype_remove () {
	mate_prototype_remove
}
## start
main_prototype_remove

##
### Tail: main
################################################################################
