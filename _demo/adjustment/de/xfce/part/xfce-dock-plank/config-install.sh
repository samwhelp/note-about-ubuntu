#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce
##
xfce_config_install () {

	echo
	echo "## Config: xfce"
	echo

	xfce_dock_plank_config


	echo
}

##
### Tail: xfce
################################################################################




################################################################################
### Head: xfce / dock / plank
##

xfce_dock_plank_config () {

	xfce_dock_plank_config_autostart

}


xfce_dock_plank_config_autostart () {

	local autostart_dir_path="$HOME/.config/autostart"
	local target_file_name="plank-on-xfce.desktop"
	local target_file_path="$autostart_dir_path/$target_file_name"

	echo "mkdir -p $autostart_dir_path"
	mkdir -p "$autostart_dir_path"

	echo "cp '/usr/share/applications/plank.desktop' $target_file_path"
	cp '/usr/share/applications/plank.desktop' "$target_file_path"

	echo "echo 'OnlyShowIn=XFCE;' >> $target_file_path"
	echo 'OnlyShowIn=XFCE;' >> "$target_file_path"

}



##
### Tail: xfce / dock / plank
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	xfce_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
