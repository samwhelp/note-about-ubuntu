#!/usr/bin/env bash

set -e


################################################################################
### Head: qt-style-follow-gtk
##
profile_config_install () {

	echo "## Config: profile"
	echo


	echo "sudo install -Dm644 ./config/qt-style-follow-gtk/qt-style-follow-gtk.sh /etc/profile.d/qt-style-follow-gtk.sh"
	sudo install -Dm644 "./config/qt-style-follow-gtk/qt-style-follow-gtk.sh" "/etc/profile.d/qt-style-follow-gtk.sh"

	echo

}
##
### Tail: qt-style-follow-gtk
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	profile_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
