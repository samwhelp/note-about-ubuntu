#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_cinnamon-keybind-main.gschema.override
	## /usr/share/glib-2.0/schemas/50_cinnamon-workspace-main.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: cinnamon"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_cinnamon-keybind-main.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_cinnamon-keybind-main.gschema.override"

	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_cinnamon-workspace-main.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_cinnamon-workspace-main.gschema.override"


	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: cinnamon
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	cinnamon_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
