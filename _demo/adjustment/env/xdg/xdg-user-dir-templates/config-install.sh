#!/usr/bin/env bash

set -e


################################################################################
### Head: xdg_user_dir_templates
##
xdg_user_dir_templates_config_install () {

	echo "## Config: xdg_user_dir_templates"
	echo

	echo "mkdir -p $HOME/Templates"
	mkdir -p "$HOME/Templates"


	echo "install -Dm755 ./config/xdg-user-dir-templates/Templates/bash.sh $HOME/Templates/bash.sh"
	install -Dm755 "./config/xdg-user-dir-templates/Templates/bash.sh" "$HOME/Templates/bash.sh"

	echo "install -Dm755 ./config/xdg-user-dir-templates/Templates/pygithub.py $HOME/Templates/pygithub.py"
	install -Dm755 "./config/xdg-user-dir-templates/Templates/pygithub.py" "$HOME/Templates/pygithub.py"

	echo "install -Dm644 ./config/xdg-user-dir-templates/Templates/empty.txt $HOME/Templates/empty.txt"
	install -Dm644 "./config/xdg-user-dir-templates/Templates/empty.txt" "$HOME/Templates/empty.txt"

	echo
}


##
### Tail: xdg_user_dir_templates
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	xdg_user_dir_templates_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
