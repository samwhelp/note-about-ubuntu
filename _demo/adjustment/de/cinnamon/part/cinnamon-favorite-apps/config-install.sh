#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_favorite_apps_config

	return 0

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / favorite-apps
##

cinnamon_favorite_apps_config () {

	echo 'gsettings set org.cinnamon favorite-apps "'"['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'cinnamon-settings.desktop']"'"'
	gsettings set org.cinnamon favorite-apps "['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'cinnamon-settings.desktop']"


	echo "gsettings set org.cinnamon.desktop.default-applications.terminal exec 'sakura'"
	gsettings set org.cinnamon.desktop.default-applications.terminal exec 'sakura'

}

##
### Tail: cinnamon / favorite-apps
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
