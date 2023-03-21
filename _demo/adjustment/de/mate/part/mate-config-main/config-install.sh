#!/usr/bin/env bash

set -e


################################################################################
### Head: mate
##
mate_config_install () {

	mate_config_main

	echo
}

##
### Tail: mate
################################################################################




################################################################################
### Head: mate / config
##

mate_config_main () {

	echo
	echo "##"
	echo "## Config: mate_config_main"
	echo "##"
	echo

	mate_config_main_config_wm

	mate_config_main_config_keyboard

	mate_config_main_config_sound

}

mate_config_main_config_wm () {


	##
	## /usr/share/glib-2.0/schemas/org.mate.marco.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.mate.Marco.general
	## gsettings list-recursively org.mate.Marco.general
	## dconf dump /org/mate/marco/general/
	## dconf dump / | grep 'org/mate/marco/general' -A 10
	##


	echo "## mate_config_main_config_wm"


	echo
	echo "gsettings set org.mate.Marco.general action-double-click-titlebar 'toggle_maximize'"
	gsettings set org.mate.Marco.general action-double-click-titlebar "'toggle_maximize'"


	echo
	echo "gsettings set org.mate.Marco.general action-middle-click-titlebar 'toggle_shade'"
	gsettings set org.mate.Marco.general action-middle-click-titlebar "'toggle_shade'"


	echo
	echo "gsettings set org.mate.Marco.general action-right-click-titlebar 'menu'"
	gsettings set org.mate.Marco.general action-right-click-titlebar "'menu'"



	echo
	echo "gsettings set org.mate.Marco.general button-layout 'menu:minimize,maximize,close'"
	gsettings set org.mate.Marco.general button-layout "'menu:minimize,maximize,close'"


	echo
	echo "gsettings set org.mate.Marco.general mouse-button-modifier '<Super>'"
	gsettings set org.mate.Marco.general mouse-button-modifier "'<Super>'"


	echo
	echo "gsettings set org.mate.Marco.general resize-with-right-button true"
	gsettings set org.mate.Marco.general resize-with-right-button true

	echo
	echo "gsettings set org.mate.Marco.general raise-on-click true"
	gsettings set org.mate.Marco.general raise-on-click true


	echo
	echo "gsettings set org.mate.Marco.general focus-mode 'click'"
	gsettings set org.mate.Marco.general focus-mode "'click'"

	echo
	echo "gsettings set org.mate.Marco.general focus-new-windows 'smart'"
	gsettings set org.mate.Marco.general focus-new-windows "'smart'"



	echo
}

mate_config_main_config_keyboard () {



	##
	## /usr/share/glib-2.0/schemas/org.mate.desktop.peripherals.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.mate.peripherals
	## gsettings list-recursively org.mate.peripherals-keyboard
	## dconf dump /org/mate/desktop/peripherals-keyboard/
	## dconf dump / | grep 'org/mate/desktop/peripherals-keyboard' -A 10
	##


	echo "## mate_config_main_config_keyboard"


	echo
	echo "gsettings set org.mate.peripherals-keyboard numlock-state 'off'"
	gsettings set org.mate.peripherals-keyboard numlock-state "'off'"

	echo
	echo "gsettings set org.mate.peripherals-keyboard remember-numlock-state true"
	gsettings set org.mate.peripherals-keyboard remember-numlock-state true



	echo

}

mate_config_main_config_sound () {



	##
	## /usr/share/glib-2.0/schemas/org.mate.sound.gschema.xml
	##


	##
	## gsettings list-recursively | grep org.mate.sound
	## gsettings list-recursively org.mate.sound
	## dconf dump /org/mate/sound/
	## dconf dump / | grep 'org/mate/sound' -A 10
	##


	echo "## mate_config_main_config_sound"


	echo
	echo "gsettings set org.mate.sound event-sounds false"
	gsettings set org.mate.sound event-sounds false


	echo

}

##
### Tail: mate / config
################################################################################




################################################################################
### Head: main
##
main_config_install () {

	mate_config_install

	return 0

}
## start
main_config_install

##
### Tail: main
################################################################################
