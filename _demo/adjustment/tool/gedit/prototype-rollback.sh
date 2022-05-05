#!/usr/bin/env bash

set -e


################################################################################
### Head: org_gnome_gedit
##
org_gnome_gedit_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/20_org.gnome.gedit.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: org_gnome_gedit"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/20_org.gnome.gedit.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/20_org.gnome.gedit.gschema.override"

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
main_prototype_rollback () {
	org_gnome_gedit_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
