#!/usr/bin/env bash

set -e


################################################################################
### Head: thunar
##
thunar_config_install () {

	echo "## Config: thunar"
	echo

	echo "mkdir -p $HOME/.config/Thunar"
	mkdir -p "$HOME/.config/Thunar"


	echo "install -Dm644 ./config/thunar/Thunar/uca.xml $HOME/.config/Thunar/uca.xml"
	install -Dm644 "./config/thunar/Thunar/uca.xml" "$HOME/.config/Thunar/uca.xml"

	echo "install -Dm644 ./config/thunar/Thunar/accels.scm $HOME/.config/Thunar/accels.scm"
	install -Dm644 "./config/thunar/Thunar/accels.scm" "$HOME/.config/Thunar/accels.scm"

	echo

	echo "mkdir -p $HOME/.config/xfce4/xfconf/xfce-perchannel-xml"
	mkdir -p "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml"

	echo "install -Dm644 ./config/thunar/xfce4/xfconf/xfce-perchannel-xml/thunar.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"
	install -Dm644 "./config/thunar/xfce4/xfconf/xfce-perchannel-xml/thunar.xml" "$HOME/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml"

	echo "install -Dm644 ./config/thunar/xfce4/helpers.rc $HOME/.config/xfce4/helpers.rc"
	install -Dm644 "./config/thunar/xfce4/helpers.rc" "$HOME/.config/xfce4/helpers.rc"


	echo
}
##
### Tail: thunar
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	thunar_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
