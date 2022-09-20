#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-text-editor
##
gnome_text_editor_prototype_install () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-text-editor"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/gnome-text-editor/schemas/50_gnome-text-editor.gschema.override /usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override"
	sudo install -Dm644 "./config/gnome-text-editor/schemas/50_gnome-text-editor.gschema.override" "/usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gnome-text-editor
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	gnome_text_editor_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
