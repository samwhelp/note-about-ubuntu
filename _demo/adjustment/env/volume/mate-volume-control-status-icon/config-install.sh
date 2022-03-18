#!/usr/bin/env bash

set -e


################################################################################
### Head: mate_volume_control_status_icon
##
mate_volume_control_status_icon_config_install () {

	echo "## Config: mate_volume_control_status_icon"
	echo

	echo "mkdir -p $HOME/.config/autostart"
	mkdir -p "$HOME/.config/autostart"


	echo "install -Dm644 ./config/mate-volume-control-status-icon/autostart/mate-volume-control-status-icon.desktop $HOME/.config/autostart/mate-volume-control-status-icon.desktop"
	install -Dm644 "./config/mate-volume-control-status-icon/autostart/mate-volume-control-status-icon.desktop" "$HOME/.config/autostart/mate-volume-control-status-icon.desktop"


	echo
}
##
### Tail: mate_volume_control_status_icon
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	mate_volume_control_status_icon_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
