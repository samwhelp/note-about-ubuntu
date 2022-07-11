#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##
xfce_config_remove () {

	echo
	echo "## Config: xfce"
	echo

	xfce_dock_cairo_dock_remove

	echo
}

##
### Tail: xfce
################################################################################



################################################################################
### Head: xfce / dock / cairo-dock
##

xfce_dock_cairo_dock_remove () {

	xfce_dock_cairo_dock_remove_autostart

}


xfce_dock_cairo_dock_remove_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="cairo-dock-on-xfce.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "rm -f $target_file_path"
	rm -f "$target_file_path"

}

##
### Tail: xfce / dock / cairo-dock
################################################################################




################################################################################
### Head: main
##
main_config_remove () {

	xfce_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
