#!/usr/bin/env bash

set -e


################################################################################
### Head: switch_input_source
##
switch_input_source_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/20_switch-input-source.gschema.override
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.input-sources.gschema.xml
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
	##

	echo
	echo "##"
	echo "## Prototype: switch_input_source"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/20_input-source.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/20_input-source.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: switch_input_source
################################################################################


################################################################################
### Head: main
##
main_prototype_rollback () {
	switch_input_source_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
