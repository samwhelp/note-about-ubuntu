#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_remove () {

	echo
	echo "## Config: mate"
	echo

	mate_favorite_apps_remove


	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / favorite-apps
##

mate_favorite_apps_remove () {

	mate_favorite_apps_remove_to_reset
	#mate_favorite_apps_remove_to_empty

}

mate_favorite_apps_remove_to_empty () {

	echo 'gsettings set com.solus-project.brisk-menu favourites "'"[]"'"'
	gsettings set com.solus-project.brisk-menu favourites "[]"
}


mate_favorite_apps_remove_to_reset () {

	echo "gsettings reset com.solus-project.brisk-menu favourites"
	gsettings reset com.solus-project.brisk-menu favourites
}

##
### Tail: mate / favorite-apps
################################################################################




################################################################################
### Head: main
##
main_config_remove () {

	mate_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
