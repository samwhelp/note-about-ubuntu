#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_theme_main_config

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / theme / default
##

cinnamon_theme_main_config () {

	#cinnamon_theme_dracula
	cinnamon_theme_gruvbox


}

cinnamon_theme_fallback_config () {

	gsettings set org.cinnamon.desktop.interface gtk-theme-backup 'Adwaita'
	gsettings set org.cinnamon.desktop.interface icon-theme-backup 'gnome'
	gsettings set org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'

}

##
### Tail: cinnamon / theme / default
################################################################################




################################################################################
### Head: cinnamon / theme / gruvbox
##

cinnamon_theme_gruvbox () {

	gsettings set org.cinnamon.theme name 'Gruvbox'
	gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze'
	gsettings set org.cinnamon.desktop.interface gtk-theme 'Gruvbox'
	gsettings set org.cinnamon.desktop.interface icon-theme 'Gruvbox-Dark'
	gsettings set org.cinnamon.desktop.wm.preferences theme 'Gruvbox'


	cinnamon_theme_fallback_config
}

##
### Tail: cinnamon / theme / gruvbox
################################################################################



################################################################################
### Head: cinnamon / theme / dracula
##

cinnamon_theme_dracula () {

	gsettings set org.cinnamon.theme name 'Dracula'
	gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze'
	gsettings set org.cinnamon.desktop.interface gtk-theme 'Dracula'
	gsettings set org.cinnamon.desktop.interface icon-theme 'Dracula'
	gsettings set org.cinnamon.desktop.wm.preferences theme 'Dracula'


	cinnamon_theme_fallback_config
}

##
### Tail: cinnamon / theme / dracula
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
