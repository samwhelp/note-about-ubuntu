#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_remove_rollback () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_hot_corner_remove



	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / hot corner
##

cinnamon_hot_corner_remove () {

	echo
	echo "##"
	echo "## Config: cinnamon_hot_corner_remove"
	echo "##"
	echo

	cinnamon_hot_corner_disable_layout
	#cinnamon_hot_corner_reset_layout

}

cinnamon_hot_corner_disable_layout () {

	echo 'gsettings set org.cinnamon hotcorner-layout "'"['scale:false:0', 'desktop:false:0', 'expo:false:0', 'desktop:false:0']"'"'
	gsettings set org.cinnamon hotcorner-layout "['scale:false:0', 'desktop:false:0', 'expo:false:0', 'desktop:false:0']"

}


cinnamon_hot_corner_reset_layout () {

	echo 'gsettings set org.cinnamon hotcorner-layout "'"['expo:false:0', 'scale:false:0', 'scale:false:0', 'desktop:false:0']"'"'
	gsettings set org.cinnamon hotcorner-layout "['expo:false:0', 'scale:false:0', 'scale:false:0', 'desktop:false:0']"

}

##
### Tail: cinnamon / hot corner
################################################################################








################################################################################
### Head: main
##
main_remove_rollback () {

	cinnamon_remove_rollback

	return 0

}
## start
main_remove_rollback

##
### Tail: main
################################################################################
