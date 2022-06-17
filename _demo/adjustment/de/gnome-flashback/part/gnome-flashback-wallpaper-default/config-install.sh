#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-flashback
##
gnome_flashback_config_install () {

	echo
	echo "## Config: gnome-flashback"
	echo

	gnome_flashback_wallpaper_default_config

	echo
}

##
### Tail: gnome-flashback
################################################################################




################################################################################
### Head: gnome-flashback / wallpaper / default
##

gnome_flashback_wallpaper_default_config () {

	echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'

	echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/default.jpg'



	echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default.jpg'


}

##
### Tail: gnome-flashback / wallpaper / default
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
