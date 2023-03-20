#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo

	mate_config_main

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / config
##

mate_config_main () {
	mate_config_main_wm
}

mate_config_main_wm () {

	echo
	echo "gsettings set org.mate.Marco.general action-double-click-titlebar 'toggle_maximize'"
	gsettings set org.mate.Marco.general action-double-click-titlebar "'toggle_maximize'"


	echo
	echo "gsettings set org.mate.Marco.general action-middle-click-titlebar 'toggle_shade'"
	gsettings set org.mate.Marco.general action-middle-click-titlebar "'toggle_shade'"


	echo
	echo "gsettings set org.mate.Marco.general action-right-click-titlebar 'menu'"
	gsettings set org.mate.Marco.general action-right-click-titlebar "'menu'"



	echo
	echo "gsettings set org.mate.Marco.general button-layout 'menu:minimize,maximize,close'"
	gsettings set org.mate.Marco.general button-layout "'menu:minimize,maximize,close'"


	echo
	echo "gsettings set org.mate.Marco.general mouse-button-modifier '<Super>'"
	gsettings set org.mate.Marco.general mouse-button-modifier "'<Super>'"


	echo
	echo "gsettings set org.mate.Marco.general resize-with-right-button true"
	gsettings set org.mate.Marco.general resize-with-right-button true


	echo
}

##
### Tail: mate / config
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
