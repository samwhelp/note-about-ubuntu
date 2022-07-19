#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_hot_corner_config



	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / hot corner
##

cinnamon_hot_corner_config () {

	echo
	echo "##"
	echo "## Config: cinnamon_hot_corner_config"
	echo "##"
	echo

	cinnamon_hot_corner_config_layout

}

cinnamon_hot_corner_config_layout () {

	echo 'gsettings set org.cinnamon hotcorner-layout "'"['scale:true:0', 'sakura:true:0', 'expo:true:0', 'desktop:true:0']"'"'
	gsettings set org.cinnamon hotcorner-layout "['scale:true:0', 'sakura:true:0', 'expo:true:0', 'desktop:true:0']"

}

##
### Tail: cinnamon / hot corner
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
