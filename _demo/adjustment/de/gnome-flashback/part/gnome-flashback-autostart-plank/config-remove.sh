#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-flashback
##
gnome_flashback_config_remove () {

	echo
	echo "## Config: gnome-flashback"
	echo

	gnome_flashback_dock_plank_remove

	echo
}

##
### Tail: gnome-flashback
################################################################################



################################################################################
### Head: gnome-flashback / dock / plank
##

gnome_flashback_dock_plank_remove () {

	gnome_flashback_dock_plank_remove_autostart

}


gnome_flashback_dock_plank_remove_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="plank-with-gnome-flashback.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "rm -f $target_file_path"
	rm -f "$target_file_path"

}

##
### Tail: gnome-flashback / dock / plank
################################################################################




################################################################################
### Head: main
##
main_config_remove () {

	gnome_flashback_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
