#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome_shell_extension_ubuntu_dock
##
gnome_shell_extension_ubuntu_dock_config_rollback () {


	echo
	echo "##"
	echo "## Config: gnome_shell_extension_ubuntu_dock"
	echo "##"
	echo



	echo "gsettings reset org.gnome.shell favorite-apps"
	gsettings reset org.gnome.shell favorite-apps





	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock dock-fixed"
	gsettings reset org.gnome.shell.extensions.dash-to-dock dock-fixed




	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock dock-position"
	gsettings reset org.gnome.shell.extensions.dash-to-dock dock-position

	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock extend-height"
	gsettings reset org.gnome.shell.extensions.dash-to-dock extend-height

	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock transparency-mode"
	gsettings reset org.gnome.shell.extensions.dash-to-dock transparency-mode


	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock dash-max-icon-size"
	gsettings reset org.gnome.shell.extensions.dash-to-dock dash-max-icon-size





	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock scroll-action"
	gsettings reset org.gnome.shell.extensions.dash-to-dock scroll-action



	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock click-action"
	gsettings reset org.gnome.shell.extensions.dash-to-dock click-action





	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock middle-click-action"
	gsettings reset org.gnome.shell.extensions.dash-to-dock middle-click-action


	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock show-mounts"
	gsettings reset org.gnome.shell.extensions.dash-to-dock show-mounts

	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock show-trash"
	gsettings reset org.gnome.shell.extensions.dash-to-dock show-trash


	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock shortcut"
	gsettings reset org.gnome.shell.extensions.dash-to-dock shortcut

	echo "gsettings reset org.gnome.shell.extensions.dash-to-dock shortcut-text"
	gsettings reset org.gnome.shell.extensions.dash-to-dock shortcut-text


	echo
}
##
### Tail: gnome_shell_extension_ubuntu_dock
################################################################################


################################################################################
### Head: main
##
main_config_rollback () {
	gnome_shell_extension_ubuntu_dock_config_rollback
}
## start
main_config_rollback

##
### Tail: main
################################################################################
