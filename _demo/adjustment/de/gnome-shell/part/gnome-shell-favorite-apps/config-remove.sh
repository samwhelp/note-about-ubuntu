#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_remove () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_favorite_apps_remove


	echo
}


##
### Tail: gnome-shell
################################################################################



################################################################################
### Head: gnome-shell / favorite-apps
##

gnome_shell_favorite_apps_remove () {

	gnome_shell_favorite_apps_remove_to_reset
	#gnome_shell_favorite_apps_remove_to_empty

}

gnome_shell_favorite_apps_remove_to_empty () {

	echo 'gsettings set org.gnome.shell favorite-apps "'"[]"'"'
	gsettings set org.gnome.shell favorite-apps "[]"
}


gnome_shell_favorite_apps_remove_to_reset () {

	echo "gsettings reset org.gnome.shell favorite-apps"
	gsettings reset org.gnome.shell favorite-apps
}

##
### Tail: gnome-shell / favorite-apps
################################################################################



################################################################################
### Head: main
##
main_config_remove () {

	gnome_shell_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
