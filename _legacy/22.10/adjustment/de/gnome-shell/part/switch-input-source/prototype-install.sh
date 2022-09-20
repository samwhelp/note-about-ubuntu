#!/usr/bin/env bash

set -e


################################################################################
### Head: switch_input_source
##
switch_input_source_prototype_install () {

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

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/switch-input-source/schemas/20_input-source.gschema.override /usr/share/glib-2.0/schemas/20_input-source.gschema.override"
	sudo install -Dm644 "./config/switch-input-source/schemas/20_input-source.gschema.override" "/usr/share/glib-2.0/schemas/20_input-source.gschema.override"

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
main_prototype_install () {
	switch_input_source_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
