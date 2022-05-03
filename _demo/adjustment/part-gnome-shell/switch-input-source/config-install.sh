#!/usr/bin/env bash

set -e


################################################################################
### Head: switch_input_source
##
switch_input_source_config_install () {

	echo
	echo "##"
	echo "## Config: switch_input_source"
	echo "##"
	echo



	## gsettings list-recursively | grep input-source | sort

	#echo 'gsettings set org.gnome.desktop.input-sources sources "'"[('xkb', 'us'), ('ibus', 'chewing'), ('ibus', 'm17n:zh:zhuyin')]"'"'
	#gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'chewing'), ('ibus', 'm17n:zh:zhuyin')]"

	#echo 'gsettings set org.gnome.desktop.input-sources sources "'"[('xkb', 'us'), ('ibus', 'm17n:zh:zhuyin')]"'"'
	#gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'm17n:zh:zhuyin')]"


	echo 'gsettings set org.gnome.desktop.input-sources sources "'"[('xkb', 'us'), ('ibus', 'chewing')]"'"'
	gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'chewing')]"


	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-input-source "'"['<Control>space', 'XF86Keyboard']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Control>space', 'XF86Keyboard']"

	echo 'gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward  "'"['<Shift><Control>space', '<Shift>XF86Keyboard']"'"'
	gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Shift><Control>space', '<Shift>XF86Keyboard']"



















	echo
}
##
### Tail: switch_input_source
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	switch_input_source_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
