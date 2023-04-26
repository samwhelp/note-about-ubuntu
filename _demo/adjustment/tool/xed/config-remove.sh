#!/usr/bin/env bash

set -e


################################################################################
### Head: xed
##

xed_config_remove () {

	echo
	echo "##"
	echo "## Config: xed"
	echo "##"
	echo


	xed_config_remove_settings


	echo

}

xed_config_remove_settings () {


	echo
	echo "gsettings reset-recursively org.x.editor.preferences.editor"
	gsettings reset-recursively org.x.editor.preferences.editor


	echo

}

##
### Tail: xed
################################################################################


################################################################################
### Head: config_remove
##

main_config_remove () {

	xed_config_remove

}

##
### Tail: config_remove
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_remove

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
