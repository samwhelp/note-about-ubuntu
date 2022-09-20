#!/usr/bin/env bash

set -e


################################################################################
### Head: switch_input_source
##
switch_input_source_config_rollback () {


	echo
	echo "##"
	echo "## Config: switch_input_source"
	echo "##"
	echo



	echo "gsettings reset org.gnome.desktop.input-sources sources"
	gsettings reset org.gnome.desktop.input-sources sources


	echo "gsettings reset org.gnome.desktop.wm.keybindings switch-input-source"
	gsettings reset org.gnome.desktop.wm.keybindings switch-input-source

	echo "gsettings reset org.gnome.desktop.wm.keybindings switch-input-source-backward"
	gsettings reset org.gnome.desktop.wm.keybindings switch-input-source-backward




	echo
}
##
### Tail: switch_input_source
################################################################################


################################################################################
### Head: main
##
main_config_rollback () {
	switch_input_source_config_rollback
}
## start
main_config_rollback

##
### Tail: main
################################################################################
