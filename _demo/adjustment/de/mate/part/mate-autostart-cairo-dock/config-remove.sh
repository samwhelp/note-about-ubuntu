#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_remove () {

	echo
	echo "## Config: mate"
	echo

	mate_dock_cairo_dock_remove

	echo
}

##
### Tail: mate
################################################################################



################################################################################
### Head: mate / dock / cairo-dock
##

mate_dock_cairo_dock_remove () {

	mate_dock_cairo_dock_remove_autostart

}


mate_dock_cairo_dock_remove_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="cairo-dock-with-mate.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "rm -f $target_file_path"
	rm -f "$target_file_path"

}

##
### Tail: mate / dock / cairo-dock
################################################################################




################################################################################
### Head: main
##
main_config_remove () {

	mate_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
