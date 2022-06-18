#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_remove () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_favorite_apps_remove

	return 0

	echo
}

##
### Tail: cinnamon
################################################################################



################################################################################
### Head: cinnamon / favorite-apps
##

cinnamon_favorite_apps_remove () {

	cinnamon_favorite_apps_remove_to_reset
	#cinnamon_favorite_apps_remove_to_empty

}

cinnamon_favorite_apps_remove_to_empty () {

	echo 'gsettings set org.cinnamon favorite-apps "'"[]"'"'
	gsettings set org.cinnamon favorite-apps "[]"
}


cinnamon_favorite_apps_remove_to_reset () {

	echo "gsettings reset org.cinnamon favorite-apps"
	gsettings reset org.cinnamon favorite-apps
}

##
### Tail: cinnamon / favorite-apps
################################################################################




################################################################################
### Head: main
##
main_config_remove () {

	cinnamon_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
