#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-flashback
##
gnome_flashback_config_install () {

	echo
	echo "## Config: gnome-flashback"
	echo

	gnome_flashback_theme_main_config

	echo
}

##
### Tail: gnome-flashback
################################################################################




################################################################################
### Head: gnome-flashback / theme / default
##

gnome_flashback_theme_main_config () {

	#gnome_flashback_theme_dracula
	gnome_flashback_theme_gruvbox


}

##
### Tail: gnome-flashback / theme / default
################################################################################




################################################################################
### Head: gnome-flashback / theme / gruvbox
##

gnome_flashback_theme_gruvbox () {

	gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'
	gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'
	gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'
	gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
	gsettings set org.gnome.desktop.interface cursor-size 24

}

##
### Tail: gnome-flashback / theme / gruvbox
################################################################################



################################################################################
### Head: gnome-flashback / theme / dracula
##

gnome_flashback_theme_dracula () {

	gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'
	gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'
	gsettings set org.gnome.desktop.interface icon-theme 'Dracula'
	gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
	gsettings set org.gnome.desktop.interface cursor-size 24

}

##
### Tail: gnome-flashback / theme / dracula
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_flashback_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
