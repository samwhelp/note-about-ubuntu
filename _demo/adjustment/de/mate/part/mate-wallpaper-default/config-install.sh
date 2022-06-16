#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo

	mate_wallpaper_default_config

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / wallpaper / default
##

mate_wallpaper_default_config () {

	echo "gsettings set org.mate.background picture-options 'zoom'"
	gsettings set org.mate.background picture-options 'zoom'

	#echo "gsettings set org.mate.background picture-options 'stretched'"
	#gsettings set org.mate.background picture-options 'stretched'


	echo "gsettings set org.mate.background picture-filename '/usr/share/backgrounds/default.jpg'"
	gsettings set org.mate.background picture-filename '/usr/share/backgrounds/default.jpg'

}

##
### Tail: mate / wallpaper / default
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
