#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-flashback
##
gnome_flashback_config_install () {

	echo
	echo "## Config: gnome-flashback"
	echo

	gnome_flashback_dock_plank_config


	echo
}

##
### Tail: gnome-flashback
################################################################################




################################################################################
### Head: gnome-flashback / dock / plank
##

gnome_flashback_dock_plank_config () {

	gnome_flashback_dock_plank_config_autostart

}


gnome_flashback_dock_plank_config_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="plank-with-gnome-flashback.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "mkdir -p $autostart_dir_path"
	mkdir -p "$autostart_dir_path"

	echo "cp '/usr/share/applications/plank.desktop' $target_file_path"
	cp '/usr/share/applications/plank.desktop' "$target_file_path"

	echo "echo 'OnlyShowIn=GNOME-Flashback;' >> $target_file_path"
	echo 'OnlyShowIn=GNOME-Flashback;' >> "$target_file_path"

}



##
### Tail: gnome-flashback / dock / plank
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_flashback_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
