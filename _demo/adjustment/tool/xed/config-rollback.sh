#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##
xed_config_rollback () {

	echo
	echo "##"
	echo "## Config: xed"
	echo "##"
	echo


	echo "gsettings reset org.x.editor.preferences.editor prefer-dark-theme"
	gsettings reset org.x.editor.preferences.editor prefer-dark-theme





	echo
}
##
### Tail: xed
################################################################################


################################################################################
### Head: main
##
main_config_rollback () {
	xed_config_rollback
}
## start
main_config_rollback

##
### Tail: main
################################################################################
