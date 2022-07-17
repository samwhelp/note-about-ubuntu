#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo

	mate_dock_plank_config


	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / dock / plank
##

mate_dock_plank_config () {

	mate_dock_plank_config_autostart_fix

	mate_dock_plank_config_autostart

}

mate_dock_plank_config_autostart_fix () {

	echo "gsettings set org.mate.session.required-components dock ''"

	gsettings set org.mate.session.required-components dock ''

}

mate_dock_plank_config_autostart () {

	# OnlyShowIn=GNOME-Flashback;X-Cinnamon;MATE;

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="plank-on-mate.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "mkdir -p $autostart_dir_path"
	mkdir -p "$autostart_dir_path"

	echo "cp '/usr/share/applications/plank.desktop' $target_file_path"
	cp '/usr/share/applications/plank.desktop' "$target_file_path"

	echo "echo 'OnlyShowIn=MATE;' >> $target_file_path"
	echo 'OnlyShowIn=MATE;' >> "$target_file_path"

}



##
### Tail: mate / dock / plank
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	mate_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
