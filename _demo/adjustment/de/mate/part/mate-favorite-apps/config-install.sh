#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo

	mate_favorite_apps_config

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / favorite-apps
##

mate_favorite_apps_config () {

	echo 'gsettings set com.solus-project.brisk-menu favourites "'"['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'matecc.desktop', 'mate-keybinding.desktop', 'mate-appearance-properties.desktop', 'atom.desktop']"'"'
	gsettings set com.solus-project.brisk-menu favourites "['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'matecc.desktop', 'mate-keybinding.desktop', 'mate-appearance-properties.desktop', 'atom.desktop']"

}

##
### Tail: mate / favorite-apps
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
