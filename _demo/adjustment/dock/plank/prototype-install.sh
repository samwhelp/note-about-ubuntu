#!/usr/bin/env bash

set -e


################################################################################
### Head: net_launchpad_plank
##
net_launchpad_plank_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.xml
	## /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: net_launchpad_plank"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/net.launchpad.plank/schemas/net.launchpad.plank.gschema.override /usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.override"
	sudo install -Dm644 "./config/net.launchpad.plank/schemas/net.launchpad.plank.gschema.override" "/usr/share/glib-2.0/schemas/net.launchpad.plank.gschema.override"

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
main_prototype_install () {
	net_launchpad_plank_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
