#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_config_main

	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / config
##

gnome_shell_config_main () {


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'toggle-shade'"
	gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar "'toggle-shade'"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'"
	gsettings set org.gnome.desktop.wm.preferences button-layout "'appmenu:minimize,maximize,close'"

	#echo
	#echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'menu:minimize,maximize,close'"
	#gsettings set org.gnome.desktop.wm.preferences button-layout "'menu:minimize,maximize,close'"

	#echo
	#echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:close'"
	#gsettings set org.gnome.desktop.wm.preferences button-layout "'appmenu:close'"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'"
	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "'<Super>'"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true"
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true


	echo
}

##
### Tail: gnome-shell / config
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
