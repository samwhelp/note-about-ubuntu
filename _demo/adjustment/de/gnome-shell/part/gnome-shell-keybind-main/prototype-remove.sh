#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_prototype_remove () {


	##
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.keybindings.gschema.xml
	##

	##
	## /usr/share/glib-2.0/schemas/50_gnome-shell-keybind-main.gschema.override
	##

	##
	## gsettings list-recursively org.gnome.desktop.wm.keybindings
	## dconf dump /org/gnome/desktop/wm/keybindings/
	## dconf dump / | grep 'org/gnome/desktop/wm/keybindings' -A 52
	##


	echo
	echo "##"
	echo "## Prototype: gnome-shell"
	echo "##"
	echo


	echo "sudo rm -rf /usr/share/glib-2.0/schemas/50_gnome-shell-keybind-main.gschema.override"
	sudo rm -rf "/usr/share/glib-2.0/schemas/50_gnome-shell-keybind-main.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: gnome-shell
################################################################################


################################################################################
### Head: main
##
main_prototype_remove () {
	gnome_shell_prototype_remove
}
## start
main_prototype_remove

##
### Tail: main
################################################################################
