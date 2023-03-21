#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_prototype_install () {


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

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/gnome-shell/schema/gschema-override/50_gnome-shell-keybind-main.gschema.override /usr/share/glib-2.0/schemas/50_gnome-shell-keybind-main.gschema.override"
	sudo install -Dm644 "./config/gnome-shell/schema/gschema-override/50_gnome-shell-keybind-main.gschema.override" "/usr/share/glib-2.0/schemas/50_gnome-shell-keybind-main.gschema.override"

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
main_prototype_install () {
	gnome_shell_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
