#!/usr/bin/env bash

set -e


################################################################################
### Head: wallpaper
##
wallpaper_asset_install () {

	echo "## Asset: wallpaper"
	echo

	wallpaper_asset_install_wallpaper_default

	echo

}

##
### Tail: wallpaper
################################################################################


################################################################################
### Head: wallpaper / default
##
wallpaper_asset_install_wallpaper_default () {


	echo

	if [ -a "/usr/share/backgrounds/default.jpg" ]; then
		echo
		echo "## File Exists:" "/usr/share/backgrounds/default.jpg"
		echo
		return 0
	fi

	echo

	echo "sudo cp ~/Pictures/Wallpaper/default.jpg /usr/share/backgrounds/default.jpg"
	sudo cp ~/Pictures/Wallpaper/default.jpg /usr/share/backgrounds/default.jpg

	echo

}

##
### Tail: wallpaper / default
################################################################################


################################################################################
### Head: main
##
main_asset_install () {

	wallpaper_asset_install

}
## start
main_asset_install

##
### Tail: main
################################################################################
