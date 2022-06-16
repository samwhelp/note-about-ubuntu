#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	echo
	echo "## Config: mate"
	echo

	mate_theme_main_config

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / theme / default
##

mate_theme_main_config () {

	#mate_theme_dracula
	mate_theme_gruvbox


}

##
### Tail: mate / theme / default
################################################################################




################################################################################
### Head: mate / theme / gruvbox
##

mate_theme_gruvbox () {

	gsettings set org.mate.Marco.general theme 'Gruvbox'
	gsettings set org.mate.interface gtk-theme 'Gruvbox'
	gsettings set org.mate.interface icon-theme 'Gruvbox-Dark'
	gsettings set org.mate.peripherals-mouse cursor-theme 'Breeze'
	gsettings set org.mate.peripherals-mouse cursor-size 24

}

##
### Tail: mate / theme / gruvbox
################################################################################



################################################################################
### Head: mate / theme / dracula
##

mate_theme_dracula () {

	gsettings set org.mate.Marco.general theme 'Dracula'
	gsettings set org.mate.interface gtk-theme 'Dracula'
	gsettings set org.mate.interface icon-theme 'Dracula'
	gsettings set org.mate.peripherals-mouse cursor-theme 'Breeze'
	gsettings set org.mate.peripherals-mouse cursor-size 24

}

##
### Tail: mate / theme / dracula
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
