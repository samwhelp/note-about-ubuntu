#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-shell
##
gnome_shell_config_install () {

	echo
	echo "## Config: gnome-shell"
	echo

	gnome_shell_config_main

	echo
}

##
### Tail: gnome-shell
################################################################################




################################################################################
### Head: gnome-shell / config
##

gnome_shell_config_main () {

	gnome_shell_config_main_config_wm

	gnome_shell_config_main_config_keyboard

	gnome_shell_config_main_config_sound

}

gnome_shell_config_main_config_wm () {


	##
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.wm.preferences.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.gnome.desktop.wm.preferences
	## gsettings list-recursively org.gnome.desktop.wm.preferences
	## dconf dump /org/gnome/desktop/wm/preferences/
	## dconf dump / | grep 'org/gnome/desktop/wm/preferences' -A 10
	##


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'"
	gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar "'toggle-maximize'"

	echo
	echo "gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'toggle-shade'"
	gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar "'toggle-shade'"

	echo
	echo "gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'"
	gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar "'menu'"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'"
	gsettings set org.gnome.desktop.wm.preferences button-layout "'appmenu:minimize,maximize,close'"

	#echo
	#echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'menu:minimize,maximize,close'"
	#gsettings set org.gnome.desktop.wm.preferences button-layout "'menu:minimize,maximize,close'"

	#echo
	#echo "gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:close'"
	#gsettings set org.gnome.desktop.wm.preferences button-layout "'appmenu:close'"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'"
	gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier "'<Super>'"


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true"
	gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true

	echo
	echo "gsettings set org.gnome.desktop.wm.preferences raise-on-click true"
	gsettings set org.gnome.desktop.wm.preferences raise-on-click true


	echo
	echo "gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'"
	gsettings set org.gnome.desktop.wm.preferences focus-mode "'click'"

	echo
	echo "gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'"
	gsettings set org.gnome.desktop.wm.preferences focus-new-windows "'smart'"

	echo
}

gnome_shell_config_main_config_keyboard () {



	##
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.peripherals.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.gnome.desktop.peripherals
	## gsettings list-recursively org.gnome.desktop.peripherals.keyboard
	## dconf dump /org/gnome/desktop/peripherals/keyboard/
	## dconf dump / | grep 'org/gnome/desktop/peripherals/keyboard' -A 10
	##


	echo
	echo "gsettings set org.gnome.desktop.peripherals.keyboard numlock-state false"
	gsettings set org.gnome.desktop.peripherals.keyboard numlock-state false

	echo
	echo "gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true"
	gsettings set org.gnome.desktop.peripherals.keyboard remember-numlock-state true



	echo

}

gnome_shell_config_main_config_sound () {



	##
	## /usr/share/glib-2.0/schemas/org.gnome.desktop.sound.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.gnome.desktop.sound
	## gsettings list-recursively org.gnome.desktop.sound
	## dconf dump /org/gnome/desktop/sound/
	## dconf dump / | grep 'org/gnome/desktop/sound' -A 10
	##


	echo
	echo "gsettings set org.gnome.desktop.sound event-sounds false"
	gsettings set org.gnome.desktop.sound event-sounds false


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
