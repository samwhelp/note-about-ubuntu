#!/usr/bin/env bash

set -e


################################################################################
### Head: plank
##
plank_config_rollback () {

	echo
	echo "##"
	echo "## Config: plank"
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
### Tail: plank
################################################################################


################################################################################
### Head: main
##
main_config_rollback () {
	plank_config_rollback
}
## start
main_config_rollback

##
### Tail: main
################################################################################
