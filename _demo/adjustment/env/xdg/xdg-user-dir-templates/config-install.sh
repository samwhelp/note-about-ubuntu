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


	xdg_config_install_by_dir

	#xdg_config_install_by_each_file


	echo

}

xdg_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}/Templates"
	mkdir -p "${HOME}/Templates"


	echo
	echo "cp -rf ./config/xdg-user-dir-templates/Templates/. ${HOME}/Templates"
	cp -rf "./config/xdg-user-dir-templates/Templates/." "${HOME}/Templates"


}

xdg_config_install_by_each_file () {


	echo
	echo "mkdir -p ${HOME}/.config/Templates"
	mkdir -p "${HOME}/.config/Templates"

	echo
	echo "install -Dm644 ./config/xdg-user-dir-templates/Templates/empty.txt ${HOME}/Templates/empty.txt"
	install -Dm644 "./config/xdg-user-dir-templates/Templates/empty.txt" "${HOME}/Templates/empty.txt"

	echo
	echo "install -Dm755 ./config/xdg-user-dir-templates/Templates/bash.sh ${HOME}/Templates/bash.sh"
	install -Dm755 "./config/xdg-user-dir-templates/Templates/bash.sh" "${HOME}/Templates/bash.sh"

	echo
	echo "install -Dm755 ./config/xdg-user-dir-templates/Templates/dl.sh ${HOME}/Templates/dl.sh"
	install -Dm755 "./config/xdg-user-dir-templates/Templates/dl.sh" "${HOME}/Templates/dl.sh"

	echo
	echo "install -Dm755 ./config/xdg-user-dir-templates/Templates/pygithub.py ${HOME}/Templates/pygithub.py"
	install -Dm755 "./config/xdg-user-dir-templates/Templates/pygithub.py" "${HOME}/Templates/pygithub.py"


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
