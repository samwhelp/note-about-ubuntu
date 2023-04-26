#!/usr/bin/env bash

set -e


################################################################################
### Head: xdg
##

xdg_config_install () {

	echo
	echo "##"
	echo "## Config: xdg"
	echo "##"
	echo


	xdg_config_install_by_each_file


	echo

}

xdg_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config"
	mkdir -p "${HOME}/.config"


	echo
	echo "install -Dm644 ./config/xdg-mime-applications/mimeapps.list $HOME/.config/mimeapps.list"
	install -Dm644 "./config/xdg-mime-applications/mimeapps.list" "$HOME/.config/mimeapps.list"


	echo
	echo "sudo install -Dm644 ./config/xdg-mime-applications/mimeapps.list /usr/share/applications/mimeapps.list"
	sudo install -Dm644 "./config/xdg-mime-applications/mimeapps.list" "/usr/share/applications/mimeapps.list"


}

##
### Tail: xdg
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	xdg_config_install

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
