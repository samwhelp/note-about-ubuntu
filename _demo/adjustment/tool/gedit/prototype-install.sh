#!/usr/bin/env bash

set -e


################################################################################
### Head: org_gnome_gedit
##
org_gnome_gedit_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/20_org.gnome.gedit.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: org_gnome_gedit"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/gedit/schemas/20_org.gnome.gedit.gschema.override /usr/share/glib-2.0/schemas/20_org.gnome.gedit.gschema.override"
	sudo install -Dm644 "./config/gedit/schemas/20_org.gnome.gedit.gschema.override" "/usr/share/glib-2.0/schemas/20_org.gnome.gedit.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: org_gnome_gedit
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	org_gnome_gedit_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
