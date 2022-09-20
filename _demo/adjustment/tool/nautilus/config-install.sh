#!/usr/bin/env bash

set -e


################################################################################
### Head: nautilus
##
nautilus_config_install () {

	echo
	echo "##"
	echo "## Config: nautilus"
	echo "##"
	echo


	##
	## dconf dump / | grep 'org/gnome/nautilus' -A 32
	## gsettings list-recursively | grep nautilus | sort
	## gsettings list-recursively | grep org.gnome.nautilus | sort
	##

	echo "gsettings set org.gnome.nautilus.preferences show-hidden-files true"
	gsettings set org.gnome.nautilus.preferences show-hidden-files true




	echo "gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'"
	gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'

	echo "gsettings set org.gnome.nautilus.preferences search-view 'list-view'"
	gsettings set org.gnome.nautilus.preferences search-view 'list-view'

	echo "gsettings set org.gnome.nautilus.list-view use-tree-view false"
	gsettings set org.gnome.nautilus.list-view use-tree-view false

	echo "gsettings set org.gnome.nautilus.icon-view default-zoom-level 'standard'"
	gsettings set org.gnome.nautilus.list-view default-zoom-level 'standard'


	echo "gsettings set org.gnome.nautilus.icon-view default-zoom-level 'larger'"
	gsettings set org.gnome.nautilus.icon-view default-zoom-level 'larger'





	echo 'gsettings set org.mate.nautilus active-plugins "'"['name', 'size', 'date_modified', 'starred']"'"'
	gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'date_modified', 'starred']"




	echo
}



##
### Tail: nautilus
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	nautilus_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
