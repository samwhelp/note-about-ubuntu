#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-text-editor
##
gnome_text_editor_prototype_rollback () {

	##
	## /usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override
	##

	echo
	echo "##"
	echo "## Prototype: gnome-text-editor"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_gnome-text-editor.gschema.override"

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
main_prototype_rollback () {
	gnome_text_editor_prototype_rollback
}
## start
main_prototype_rollback

##
### Tail: main
################################################################################
