#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome_shell_extension_ubuntu_dock
##
gnome_shell_extension_ubuntu_dock_config_install () {

	echo
	echo "##"
	echo "## Config: gnome_shell_extension_ubuntu_dock"
	echo "##"
	echo


	echo 'gsettings set org.gnome.shell favorite-apps "'"['pcmanfm-qt.desktop', 'atom.desktop', 'firefox_firefox.desktop', 'sakura.desktop', 'gnome-control-center.desktop']"'"'
	gsettings set org.gnome.shell favorite-apps "['pcmanfm-qt.desktop', 'atom.desktop', 'firefox_firefox.desktop', 'sakura.desktop', 'gnome-control-center.desktop']"



	## gsettings list-recursively | grep org.gnome.shell.extensions.dash-to-dock | sort



	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false"
	#gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true




	echo "gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'"
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false"
	gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'"
	gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DYNAMIC'

	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24"
	#gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 24

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36"
	gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36





	echo "gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'switch-workspace'"
	gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'switch-workspace'

	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'cycle-windows'"
	#gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'cycle-windows'





	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-or-previews'"
	#gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-or-previews'

	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-previews'"
	#gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-minimize-or-previews'

	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'cycle-windows'"
	#gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'cycle-windows'

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'"
	gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'




	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'launch'"
	#gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'launch'

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'cycle-windows'"
	gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'cycle-windows'


	echo "gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false"
	gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false



	#echo 'gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "'"['<Super>q']"'"'
	#gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "['<Super>q']"

	#echo "gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text '<Super>q'"
	#gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text '<Super>q'

	echo 'gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "'"['']"'"'
	gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "['']"

	echo "gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text ''"
	gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text ''


	echo
}
##
### Tail: gnome_shell_extension_ubuntu_dock
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	gnome_shell_extension_ubuntu_dock_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
