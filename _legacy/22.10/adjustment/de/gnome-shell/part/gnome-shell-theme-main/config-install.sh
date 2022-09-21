#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_theme_main_config

	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / theme / default
##

gnome_shell_theme_main_config () {

	gnome_shell_theme_yaru_prussiangreen_dark
	#gnome_shell_theme_dracula
	#gnome_shell_theme_gruvbox


}

##
### Tail: gnome-shell / theme / default
################################################################################




################################################################################
### Head: gnome-shell / theme / gruvbox
##

gnome_shell_theme_gruvbox () {

	## $ grep 'color-scheme' /usr/share/glib-2.0/schemas/org.gnome.desktop.interface.gschema.xml -A 7
	#gsettings set org.gnome.desktop.interface color-scheme 'default'
	#gsettings set org.gnome.desktop.interface color-scheme 'prefer-light'
	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

	gsettings set org.gnome.desktop.wm.preferences theme 'Gruvbox'
	gsettings set org.gnome.desktop.interface gtk-theme 'Gruvbox'
	gsettings set org.gnome.desktop.interface icon-theme 'Gruvbox-Dark'
	gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
	gsettings set org.gnome.desktop.interface cursor-size 24

}

##
### Tail: gnome-shell / theme / gruvbox
################################################################################



################################################################################
### Head: gnome-shell / theme / dracula
##

gnome_shell_theme_dracula () {

	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

	gsettings set org.gnome.desktop.wm.preferences theme 'Dracula'
	gsettings set org.gnome.desktop.interface gtk-theme 'Dracula'
	gsettings set org.gnome.desktop.interface icon-theme 'Dracula'
	gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
	gsettings set org.gnome.desktop.interface cursor-size 24

}

##
### Tail: gnome-shell / theme / dracula
################################################################################


################################################################################
### Head: gnome-shell / theme / dracula
##

gnome_shell_theme_yaru_prussiangreen_dark () {

	gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

	gsettings set org.gnome.desktop.wm.preferences theme 'Yaru-prussiangreen-dark'
	gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-prussiangreen-dark'
	gsettings set org.gnome.desktop.interface icon-theme 'Yaru-prussiangreen-dark'
	gsettings set org.gnome.desktop.interface cursor-theme 'Breeze'
	gsettings set org.gnome.desktop.interface cursor-size 24

}

##
### Tail: gnome-shell / theme / dracula
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
