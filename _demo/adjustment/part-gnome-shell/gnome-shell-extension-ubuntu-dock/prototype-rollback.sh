#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome_shell_extension_ubuntu_dock
##
gnome_shell_extension_ubuntu_dock_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml
	## /usr/share/glib-2.0/schemas/10_ubuntu-dock.gschema.override
	## /usr/share/glib-2.0/schemas/20_ubuntu-dock.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome_shell_extension_ubuntu_dock"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/20_ubuntu-dock.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/20_ubuntu-dock.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gnome_shell_extension_ubuntu_dock
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	gnome_shell_extension_ubuntu_dock_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
