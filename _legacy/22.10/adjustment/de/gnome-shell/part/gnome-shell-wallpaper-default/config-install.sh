#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_wallpaper_default_config

	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / wallpaper / default
##

gnome_shell_wallpaper_default_config () {

	echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'

	echo "gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/default.jpg'



	echo "gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/default.jpg'


}

##
### Tail: gnome-shell / wallpaper / default
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_shell_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
