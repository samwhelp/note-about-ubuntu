#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_wallpaper_default_config

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / wallpaper / default
##

cinnamon_wallpaper_default_config () {

	echo "gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'

}

##
### Tail: cinnamon / wallpaper / default
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	cinnamon_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
