#!/usr/bin/env bash

set -e


################################################################################
### Head: net_launchpad_plank
##
net_launchpad_plank_config_rollback () {

	echo
	echo "##"
	echo "## Config: net_launchpad_plank"
	echo "##"
	echo


	echo "gsettings reset net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode"
	gsettings reset net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ hide-mode

	echo "gsettings reset net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ auto-pinning"
	gsettings reset net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ auto-pinning

	echo "gsettings reset net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ dock-items"
	gsettings reset net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ dock-items




	echo
}
##
### Tail: net_launchpad_plank
################################################################################


################################################################################
### Head: main
##
main_config_rollback () {
	net_launchpad_plank_config_rollback
}
## start
main_config_rollback

##
### Tail: main
################################################################################
