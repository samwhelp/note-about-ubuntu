#!/usr/bin/env bash

set -e


################################################################################
### Head: gnome-terminal
##
gnome_terminal_config_install () {

	echo
	echo "##"
	echo "## Config: gnome-terminal"
	echo "##"
	echo


	##
	## dconf dump / | grep 'org/gnome/terminal' -A 14
	##
	## gsettings list-recursively | grep org.gnome.Terminal | sort
	##

	gnome_terminal_config_install_default_profile_config



	echo
}

gnome_terminal_config_install_default_profile_config () {

	echo
	echo "##"
	echo "## Config: gnome-terminal / profile"
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

	local prefix="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles"


	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" scrollbar-policy 'never'"
	gsettings set "${prefix}:/:${profile}/" scrollbar-policy 'never'

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" use-theme-colors false"
	gsettings set "${prefix}:/:${profile}/" use-theme-colors false


	#echo
	#echo "gsettings set \"${prefix}:/:${profile}/\" foreground-color 'rgb(255,255,255)'"
	#gsettings set "${prefix}:/:${profile}/" foreground-color 'rgb(255,255,255)'

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" foreground-color 'rgb(170,170,170)'"
	gsettings set "${prefix}:/:${profile}/" foreground-color 'rgb(170,170,170)'


	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" foreground-color 'rgb(0,0,0)'"
	gsettings set "${prefix}:/:${profile}/" background-color 'rgb(0,0,0)'


	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" use-theme-transparency false"
	gsettings set "${prefix}:/:${profile}/" use-theme-transparency false

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" use-transparent-background true"
	gsettings set "${prefix}:/:${profile}/" use-transparent-background true

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" background-transparency-percent 15"
	gsettings set "${prefix}:/:${profile}/" background-transparency-percent 15

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" visible-name 'Default'"
	gsettings set "${prefix}:/:${profile}/" visible-name 'Default'

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" use-system-font false"
	gsettings set "${prefix}:/:${profile}/" use-system-font false

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" font 'Monospace 14'"
	gsettings set "${prefix}:/:${profile}/" font 'Monospace 14'

	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" scrollback-unlimited true"
	gsettings set "${prefix}:/:${profile}/" scrollback-unlimited true


	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" audible-bell false"
	gsettings set "${prefix}:/:${profile}/" audible-bell false



	echo
	echo "gsettings set \"${prefix}:/:${profile}/\" palette \"['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(196,160,0)', 'rgb(52,101,164)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']\""
	gsettings set "${prefix}:/:${profile}/" palette "['rgb(46,52,54)', 'rgb(204,0,0)', 'rgb(78,154,6)', 'rgb(196,160,0)', 'rgb(52,101,164)', 'rgb(117,80,123)', 'rgb(6,152,154)', 'rgb(211,215,207)', 'rgb(85,87,83)', 'rgb(239,41,41)', 'rgb(138,226,52)', 'rgb(252,233,79)', 'rgb(114,159,207)', 'rgb(173,127,168)', 'rgb(52,226,226)', 'rgb(238,238,236)']"



}

##
### Tail: gnome-terminal
################################################################################


################################################################################
### Head: main
##
main_config_install () {
	gnome_terminal_config_install
}
## start
main_config_install

##
### Tail: main
################################################################################
