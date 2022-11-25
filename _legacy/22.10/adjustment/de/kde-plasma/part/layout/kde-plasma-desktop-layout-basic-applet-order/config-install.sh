#!/usr/bin/env bash

set -e


################################################################################
### Head: kde-plasma
##
kde_plasma_config_install () {

	echo
	echo "##"
	echo "## Config Start: kde-plasma"
	echo "##"
	echo

	kde_config_install_kde_keybind
	kde_config_install_kde_desktop


	echo
}

##
### Tail: kde-plasma
################################################################################


################################################################################
### Head: kde / keybind
##
kde_config_install_kde_keybind () {

	kde_global_shortcuts_server_stop
	kde_config_install_kde_keybind_raw
	kde_global_shortcuts_server_start

}

kde_config_install_kde_keybind_raw () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_keybind"
	echo "##"
	echo


	echo "mkdir -p ${HOME}/.config/"
	mkdir -p "${HOME}/.config/"


	echo "install -Dm644 ./config/kde-plasma/kglobalshortcutsrc ${HOME}/.config/kglobalshortcutsrc"
	install -Dm644 "./config/kde-plasma/kglobalshortcutsrc" "${HOME}/.config/kglobalshortcutsrc"


	echo
}
##
### Tail: kde / keybind
################################################################################


################################################################################
### Head: kde / global shortcuts server
##
kde_global_shortcuts_server_stop () {

	echo
	echo "##"
	echo "## Prepare: kde_global_shortcuts_server_stop"
	echo "##"
	echo


	echo "systemctl --user stop plasma-kglobalaccel.service"
	systemctl --user stop plasma-kglobalaccel.service


	echo
}

kde_global_shortcuts_server_start () {

	echo
	echo "##"
	echo "## Prepare: kde_global_shortcuts_server_start"
	echo "##"
	echo


	echo "systemctl --user start plasma-kglobalaccel.service"
	systemctl --user start plasma-kglobalaccel.service


	echo
}

kde_global_shortcuts_server_restart () {
	#kde_global_shortcuts_server_stop
	#kde_global_shortcuts_server_start


	echo
	echo "##"
	echo "## Prepare: kde_global_shortcuts_server_stop"
	echo "##"
	echo


	echo "systemctl --user restart plasma-kglobalaccel.service"
	systemctl --user restart plasma-kglobalaccel.service


	echo

}
##
### Tail: kde / global shortcuts server
################################################################################




################################################################################
### Head: kde / desktop
##
kde_config_install_kde_desktop () {

	kde_plasma_shell_stop
	kde_config_install_kde_desktop_raw
	kde_plasma_shell_start

}

kde_config_install_kde_desktop_raw () {

	echo
	echo "##"
	echo "## Config: kde_config_install_kde_desktop"
	echo "##"
	echo


	echo "mkdir -p ${HOME}/.config/"
	mkdir -p "${HOME}/.config/"


	echo "cp -rf ./config/kde-plasma/. ${HOME}/.config/"
	cp -rf "./config/kde-plasma/." "${HOME}/.config/"


	echo
}
##
### Tail: kde / desktop
################################################################################



################################################################################
### Head: kde / plasma shell
##
kde_plasma_shell_stop () {

	echo
	echo "##"
	echo "## Prepare: kde_plasma_shell_stop"
	echo "##"
	echo


	echo "systemctl --user stop plasma-plasmashell.service"
	systemctl --user stop plasma-plasmashell.service


	echo
}

kde_plasma_shell_start () {

	echo
	echo "##"
	echo "## Prepare: kde_plasma_shell_start"
	echo "##"
	echo


	echo "systemctl --user start plasma-plasmashell.service"
	systemctl --user start plasma-plasmashell.service


	echo
}

kde_plasma_shell_restart () {
	#kde_plasma_shell_stop
	#kde_plasma_shell_start


	echo
	echo "##"
	echo "## Prepare: kde_plasma_shell_stop"
	echo "##"
	echo


	echo "systemctl --user restart plasma-plasmashell.service"
	systemctl --user restart plasma-plasmashell.service


	echo

}
##
### Tail: kde / global plasma shell
################################################################################


################################################################################
### Head: main
##
main_config_install () {

	kde_plasma_config_install

	return 0

}
#gsettings set start
main_config_install

##
### Tail: main
################################################################################
