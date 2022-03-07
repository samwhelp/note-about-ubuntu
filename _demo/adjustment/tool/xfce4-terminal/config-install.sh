#!/usr/bin/env bash

set -e


################################################################################
### Head: xfce4-terminal
##
xfce4_terminal_config_install () {

	echo "## Config: xfce4-terminal"
	echo

	echo "mkdir -p $HOME/.config/xfce4/terminal"
	mkdir -p "$HOME/.config/xfce4/terminal"

	echo "install -Dm644 ./config/xfce4-terminal/terminalrc $HOME/.config/xfce4/terminal/terminalrc"
	install -Dm644 "./config/xfce4-terminal/terminalrc" "$HOME/.config/xfce4/terminal/terminalrc"

	echo
}
##
### Tail: xfce4-terminal
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	xfce4_terminal_config_install

}
## start
main_config_install

##
### Tail: main
################################################################################
