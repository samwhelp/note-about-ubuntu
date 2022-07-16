#!/usr/bin/env bash

set -e


################################################################################
### Head: net_launchpad_plank
##
net_launchpad_plank_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.xml
	## /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: net_launchpad_plank"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: net_launchpad_plank
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	net_launchpad_plank_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
