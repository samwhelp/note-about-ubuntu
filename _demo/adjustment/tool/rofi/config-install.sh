#!/usr/bin/env bash

set -e


################################################################################
### Head: rofi
##
rofi_config_install () {


	echo "## Config: rofi"
	echo

	echo "mkdir -p $HOME/.config/rofi"
	mkdir -p "$HOME/.config/rofi"


	echo "install -Dm644 ./config/rofi/config.rasi $HOME/.config/rofi/config.rasi"
	install -Dm644 "./config/rofi/config.rasi" "$HOME/.config/rofi/config.rasi"


	rofi_put_app_desktop_entry

	echo
}

rofi_put_app_desktop_entry () {

	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "install -Dm644 ./config/rofi/rofi-show-drun.desktop $HOME/.local/share/applications/rofi-show-drun.desktop"
	install -Dm644 "./config/rofi/rofi-show-drun.desktop" "$HOME/.local/share/applications/rofi-show-drun.desktop"

	echo "install -Dm644 ./config/rofi/rofi-show-run.desktop $HOME/.local/share/applications/rofi-show-run.desktop"
	install -Dm644 "./config/rofi/rofi-show-run.desktop" "$HOME/.local/share/applications/rofi-show-run.desktop"

	echo "install -Dm644 ./config/rofi/rofi-show-window.desktop $HOME/.local/share/applications/rofi-show-window.desktop"
	install -Dm644 "./config/rofi/rofi-show-window.desktop" "$HOME/.local/share/applications/rofi-show-window.desktop"

}
##
### Tail: rofi
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	rofi_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
