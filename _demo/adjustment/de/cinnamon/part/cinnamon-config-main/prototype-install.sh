#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_prototype_install () {


	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.wm.preferences.gschema.xml
	##

	##
	## /usr/share/glib-2.0/schemas/50_cinnamon-config-main.gschema.override
	##

	##
	## gsettings list-recursively org.cinnamon.desktop.wm.preferences
	## dconf dump /org/cinnamon/desktop/wm/preferences/
	## dconf dump / | grep 'org/cinnamon/desktop/wm/preferences' -A 10
	##


	echo
	echo "##"
	echo "## Prototype: cinnamon"
	echo "##"
	echo

	echo "sudo mkdir -p /usr/share/glib-2.0/schemas"
	sudo mkdir -p "/usr/share/glib-2.0/schemas"

	echo "sudo install -Dm644 ./config/cinnamon/schema/gschema-override/50_cinnamon-config-main.gschema.override /usr/share/glib-2.0/schemas/50_cinnamon-config-main.gschema.override"
	sudo install -Dm644 "./config/cinnamon/schema/gschema-override/50_cinnamon-config-main.gschema.override" "/usr/share/glib-2.0/schemas/50_cinnamon-config-main.gschema.override"

	echo "sudo glib-compile-schemas /usr/share/glib-2.0/schemas/"
	sudo glib-compile-schemas /usr/share/glib-2.0/schemas/

	echo
}
##
### Tail: cinnamon
################################################################################


################################################################################
### Head: main
##
main_prototype_install () {
	cinnamon_prototype_install
}
## start
main_prototype_install

##
### Tail: main
################################################################################
