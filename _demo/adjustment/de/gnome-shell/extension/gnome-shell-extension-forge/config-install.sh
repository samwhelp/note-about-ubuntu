#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "##"
	echo "## Config: gnome-shell"
	echo "##"
	echo

	gnome_shell_extension_forge_config_main

	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / config
##

gnome_shell_extension_forge_config_main () {

	gnome_shell_extension_forge_config_main_by_import_dconf_db

}

gnome_shell_extension_forge_config_main_by_import_dconf_db () {


	##
	## dconf dump /org/gnome/shell/extensions/forge/
	##


	echo "## gnome_shell_extension_forge_config_main_by_import_dconf_db"



	echo
	echo "reset -f /org/gnome/shell/extensions/forge/"
	dconf reset -f /org/gnome/shell/extensions/forge/

	echo
	echo "dconf load /org/gnome/shell/extensions/forge/ < ./config/gnome-shell-extension/schema/dconf-db/50_gnome-shell-extension-forge.conf"
	dconf load /org/gnome/shell/extensions/forge/ < ./config/gnome-shell-extension/schema/dconf-db/50_gnome-shell-extension-forge.conf


	echo
}


##
### Tail: gnome-shell / config
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	gnome_shell_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
