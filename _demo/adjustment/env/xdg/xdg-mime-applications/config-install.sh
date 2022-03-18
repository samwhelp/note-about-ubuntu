#!/usr/bin/env bash

set -e


################################################################################
### Head: xdg_mime_applications
##
xdg_mime_applications_config_install () {

	echo "## Config: xdg_mime_applications"
	echo

	echo "mkdir -p $HOME/.config"
	mkdir -p "$HOME/.config"


	echo "install -Dm644 ./config/xdg-mime-applications/mimeapps.list $HOME/.config/mimeapps.list"
	install -Dm644 "./config/xdg-mime-applications/mimeapps.list" "$HOME/.config/mimeapps.list"

	echo "sudo install -Dm644 ./config/xdg-mime-applications/mimeapps.list /usr/share/applications/mimeapps.list"
	sudo install -Dm644 "./config/xdg-mime-applications/mimeapps.list" "/usr/share/applications/mimeapps.list"

	echo
}


##
### Tail: xdg_mime_applications
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	xdg_mime_applications_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
