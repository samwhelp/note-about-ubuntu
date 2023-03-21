#!/usr/bin/env bash

set -e


################################################################################
### Head: cinnamon
##
cinnamon_config_install () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_config_main_config

	cinnamon_config_misc_config

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / config / main
##

cinnamon_config_main_config () {

	echo
	echo "##"
	echo "## Config: cinnamon_config_main_config"
	echo "##"
	echo

	cinnamon_config_main_config_wm

	cinnamon_config_main_config_keyboard

	cinnamon_config_main_config_sound

	cinnamon_config_main_config_applets

}

cinnamon_config_main_config_wm () {


	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.wm.preferences.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon.desktop.wm.preferences
	## gsettings list-recursively org.cinnamon.desktop.wm.preferences
	## dconf dump /org/cinnamon/desktop/wm/preferences/
	## dconf dump / | grep 'org/cinnamon/desktop/wm/preferences' -A 10
	##


	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'"
	gsettings set org.cinnamon.desktop.wm.preferences action-double-click-titlebar "'toggle-maximize'"

	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar 'lower'"
	gsettings set org.cinnamon.desktop.wm.preferences action-middle-click-titlebar "'lower'"

	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences action-right-click-titlebar 'menu'"
	gsettings set org.cinnamon.desktop.wm.preferences action-right-click-titlebar "'menu'"

	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar 'shade'"
	gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar "'shade'"

	#echo
	#echo "gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar 'opacity'"
	#gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar "'opacity'"

	#echo
	#echo "gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar 'none'"
	#gsettings set org.cinnamon.desktop.wm.preferences action-scroll-titlebar "'none'"


	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier '<Super>'"
	gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier "'<Super>'"

	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences mouse-button-zoom-modifier '<Super>'"
	gsettings set org.cinnamon.desktop.wm.preferences mouse-button-zoom-modifier "'<Super>'"


	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences resize-with-right-button true"
	gsettings set org.cinnamon.desktop.wm.preferences resize-with-right-button true

	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences raise-on-click true"
	gsettings set org.cinnamon.desktop.wm.preferences raise-on-click true


	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences focus-mode 'click'"
	gsettings set org.cinnamon.desktop.wm.preferences focus-mode "'click'"

	echo
	echo "gsettings set org.cinnamon.desktop.wm.preferences focus-new-windows 'smart'"
	gsettings set org.cinnamon.desktop.wm.preferences focus-new-windows "'smart'"



	echo

}


cinnamon_config_main_config_keyboard () {



	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.peripherals.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon.desktop.peripherals
	## gsettings list-recursively org.cinnamon.desktop.peripherals.keyboard
	## dconf dump /org/cinnamon/desktop/peripherals/keyboard/
	## dconf dump / | grep 'org/cinnamon/desktop/peripherals/keyboard' -A 10
	##


	echo
	echo "gsettings set org.cinnamon.desktop.peripherals.keyboard numlock-state false"
	gsettings set org.cinnamon.desktop.peripherals.keyboard numlock-state false

	echo
	echo "gsettings set org.cinnamon.desktop.peripherals.keyboard remember-numlock-state true"
	gsettings set org.cinnamon.desktop.peripherals.keyboard remember-numlock-state true



	echo

}

cinnamon_config_main_config_sound () {



	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.sound.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.cinnamon.desktop.sound
	## gsettings list-recursively org.cinnamon.desktop.sound
	## dconf dump /org/cinnamon/desktop/sound/
	## dconf dump / | grep 'org/cinnamon/desktop/sound' -A 10
	##


	echo
	echo "gsettings set org.cinnamon.desktop.sound event-sounds false"
	gsettings set org.cinnamon.desktop.sound event-sounds false


	echo

}

cinnamon_config_main_config_applets () {


	##
	## /usr/share/glib-2.0/schemas/org.cinnamon.desktop.sound.gschema.xml
	##


	##
	## gsettings list-recursively | grep 'org.cinnamon '
	## gsettings list-recursively org.cinnamon
	## dconf dump /org/cinnamon/
	## dconf dump / | grep '^\[org/cinnamon\]' -A 10
	##

	echo
	echo 'gsettings set org.cinnamon enabled-applets "'"['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"'"'
	gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"

	echo
	echo "gsettings set org.cinnamon next-applet-id 15"
	gsettings set org.cinnamon next-applet-id 15

	echo
	echo 'gsettings set org.cinnamon panels-enabled "'"['1:0:top']"'"'
	gsettings set org.cinnamon panels-enabled "['1:0:top']"

	echo
	echo "gsettings set org.cinnamon panel-edit-mode false"
	gsettings set org.cinnamon panel-edit-mode false


	echo

}

##
### Tail: cinnamon / config / main
################################################################################




################################################################################
### Head: cinnamon / config / misc
##

cinnamon_config_misc_config () {

	echo
	echo "##"
	echo "## Config: cinnamon_config_misc_config"
	echo "##"
	echo

	cinnamon_config_misc_config_rc

}


cinnamon_config_misc_config_rc () {

	echo
	echo "rm -rf $HOME/.cinnamon"
	rm -rf "$HOME/.cinnamon"

	echo
	echo "mkdir -p $HOME/.cinnamon"
	mkdir -p "$HOME/.cinnamon"

	echo
	echo "cp -af config/cinnamon/config/.cinnamon/. $HOME/.cinnamon"
	cp -af "config/cinnamon/config/.cinnamon/." "$HOME/.cinnamon"


	echo

}

##
### Tail: cinnamon / config / misc
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	cinnamon_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
