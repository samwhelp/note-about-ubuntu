#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_remove () {

	echo
	echo "## Config: mate"
	echo

	mate_dock_plank_remove

	echo
}

##
### Tail: mate
################################################################################



################################################################################
### Head: mate / dock / plank
##

mate_dock_plank_remove () {

	mate_dock_plank_remove_autostart

}


mate_dock_plank_remove_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="plank-with-mate.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "rm -f $target_file_path"
	rm -f "$target_file_path"

}

##
### Tail: mate / dock / plank
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
