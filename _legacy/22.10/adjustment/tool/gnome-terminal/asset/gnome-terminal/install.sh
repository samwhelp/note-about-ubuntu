#!/usr/bin/env bash

set -e


### Head: pkg_install ##########################################################
#
gnome_terminal_pkg_install () {

	echo
	echo "##"
	echo "## Config: gnome-terminal / gnome_terminal_pkg_install"
	echo "##"
	echo

	sudo apt-get install gnome-terminal



}
#
### Tail: pkg_install ##########################################################


### Head: conf_set #############################################################
#
gnome_terminal_conf_set () {



	echo
	echo "##"
	echo "## Config: gnome-terminal / gnome_terminal_conf_set"
	echo "##"
	echo

	echo
	echo 'gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false'
	gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false


	echo
	echo

	## https://wiki.gnome.org/Apps/Terminal/FAQ
	## $ dpkg -L gnome-terminal | grep gschema
	## /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
	## $ view /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml

	local profile=$(gsettings get org.gnome.Terminal.ProfilesList default)
	profile=${profile:1:-1} # remove leading and trailing single quotes
	echo "profile=${profile}"


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollbar-policy 'never'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollbar-policy 'never'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-colors false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-colors false


	#echo
	#echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(255,255,255)'"
	#gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color 'rgb(255,255,255)'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(170,170,170)'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" foreground-color 'rgb(170,170,170)'


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" foreground-color 'rgb(0,0,0)'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-color 'rgb(0,0,0)'


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-theme-transparency false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-theme-transparency false

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-transparent-background true"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-transparent-background true

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" background-transparency-percent 15"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" background-transparency-percent 15

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" visible-name 'Default'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" visible-name 'Default'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" use-system-font false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" use-system-font false

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" font 'Monospace 14'"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" font 'Monospace 14'

	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" scrollback-unlimited true"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" scrollback-unlimited true


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" audible-bell false"
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" audible-bell false


	echo
	echo "gsettings set \"org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/\" palette \"['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(196,160,0)', 'rgb(52,101,164)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']\""
	gsettings set "org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${profile}/" palette "['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(196,160,0)', 'rgb(52,101,164)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']"




}
#
### Tail: conf_set #############################################################


### Head: main #################################################################
#
gnome_terminal_main_install () {

	#gnome_terminal_pkg_install
	gnome_terminal_conf_set

}

gnome_terminal_main_install
#
### Tail: main #################################################################
