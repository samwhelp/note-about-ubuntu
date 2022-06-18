#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_remove () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_dock_cario_dock_remove

	echo
}

##
### Tail: cinnamon
################################################################################



################################################################################
### Head: cinnamon / dock / cario-dock
##

cinnamon_dock_cario_dock_remove () {

	cinnamon_dock_cario_dock_remove_autostart

}


cinnamon_dock_cario_dock_remove_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="cairo-dock-with-cinnamon.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "rm -f $target_file_path"
	rm -f "$target_file_path"

}

##
### Tail: cinnamon / dock / cario-dock
################################################################################




################################################################################
### Head: main
##
main_config_remove () {

	cinnamon_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
