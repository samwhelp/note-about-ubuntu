#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-flashback
##
gnome_flashback_config_remove () {

	echo
	echo "## Config: gnome-flashback"
	echo

	gnome_flashback_keybind_custom_remove

	return 0

	echo
}











gnome_flashback_keybind_custom_remove () {




	##
	## $ gsettings list-recursively org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/
	##
	## ```
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding command ''
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding name ''
	## org.gnome.settings-daemon.plugins.media-keys.custom-keybinding binding ''
	## ```
	##
	## $ gsettings list-recursively org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
	##
	##


	## Clear old
	dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/

	## Dump all
	#dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/

	#gsettings reset org.gnome.settings-daemon.plugins.media-keys custom-keybindings

	gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings "[]"




	echo
	echo "##"
	echo "## Dump: keybindings_custom"
	echo "##"
	echo
	echo "dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/"
	echo
	dconf dump /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/
	echo

	echo
	echo "gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings"
	echo
	gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings
	echo

}

##
### Tail: gnome-flashback
################################################################################







################################################################################
### Head: main
##
main_config_remove () {

	gnome_flashback_config_remove

	return 0

}
## start
main_config_remove

##
### Tail: main
################################################################################
