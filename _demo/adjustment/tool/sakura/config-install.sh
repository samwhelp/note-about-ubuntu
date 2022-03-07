#!/usr/bin/env bash

set -e


################################################################################
### Head: sakura
##
sakura_config_install () {

	echo "## Config: sakura"
	echo

	echo "mkdir -p $HOME/.config/sakura"
	mkdir -p "$HOME/.config/sakura"


	echo "install -Dm644 ./config/sakura/sakura.conf $HOME/.config/sakura/sakura.conf"
	install -Dm644 "./config/sakura/sakura.conf" "$HOME/.config/sakura/sakura.conf"

	#sakura_put_my_desktop_entry

	echo
}

sakura_put_my_desktop_entry () {

	echo
	echo "mkdir -p $HOME/.local/share/applications"
	mkdir -p "$HOME/.local/share/applications"

	echo "install -Dm644 /usr/share/applications/sakura.desktop $HOME/.local/share/applications/sakura.desktop"
	install -Dm644 "/usr/share/applications/sakura.desktop" "$HOME/.local/share/applications/sakura.desktop"

	echo "sed -i 's/^Exec=sakura/Exec=sakura -m/g' $HOME/.local/share/applications/sakura.desktop"
	sed -i 's/^Exec=sakura/Exec=sakura -m/g' "$HOME/.local/share/applications/sakura.desktop"
	echo
}
##
### Tail: sakura
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	sakura_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
