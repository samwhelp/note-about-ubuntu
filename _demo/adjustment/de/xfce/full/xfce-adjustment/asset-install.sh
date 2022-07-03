#!/usr/bin/env bash

set -e


################################################################################
### Head: Theme
##
theme_asset_install () {

	echo "## Asset: theme"
	echo

	theme_asset_install_gruvbox_gtk
	theme_asset_install_gruvbox_icon
	theme_asset_install_rgaps_xfwm4


	echo

}

##
### Tail: Theme
################################################################################


################################################################################
### Head: Theme / Gruvbox / Gtk
##
theme_asset_install_gruvbox_gtk () {

	echo

	if [ -a "$HOME/.themes/Gruvbox" ]; then
		echo
		echo "## Theme Exists:" "$HOME/.themes/Gruvbox"
		echo
		return 0
	fi


	theme_asset_install_gruvbox_gtk_download

	theme_asset_install_gruvbox_gtk_install
}

theme_asset_install_gruvbox_gtk_download () {

	if [ -a "./tmp/Theme_Gruvbox_Source" ]; then
		echo
		echo "## Theme Source Exists:" "./tmp/Theme_Gruvbox_Source"
		echo
		return 0
	fi

	echo
	echo "mkdir -p ./tmp"
	mkdir -p ./tmp


	##
	## * https://github.com/archcraft-os/archcraft-themes
	##
	echo "git clone https://github.com/archcraft-os/archcraft-themes.git ./tmp/Theme_Gruvbox_Source"
	git clone https://github.com/archcraft-os/archcraft-themes.git ./tmp/Theme_Gruvbox_Source

}

theme_asset_install_gruvbox_gtk_install () {

	if ! [ -a "./tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox" ]; then
		echo
		echo "## Theme Source / Gruvbox Not Exists:" "./tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox"
		echo
		return 0
	fi


	echo "mkdir -p $HOME/.themes"
	mkdir -p "$HOME/.themes"

	echo "cp -a ./tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox $HOME/.themes/Gruvbox"
	cp -a "./tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox" "$HOME/.themes/Gruvbox"

}


##
### Tail: Theme / Gruvbox / Gtk
################################################################################


################################################################################
### Head: Theme / Gruvbox / Icon
##
theme_asset_install_gruvbox_icon () {

	echo

	if [ -a "$HOME/.icons/Gruvbox-Dark" ]; then
		echo
		echo "## Icons Exists:" "$HOME/.icons/Gruvbox-Dark"
		echo
		return 0
	fi


	theme_asset_install_gruvbox_icon_download

	theme_asset_install_gruvbox_icon_install
}

theme_asset_install_gruvbox_icon_download () {

	if [ -a "./tmp/Icons_Gruvbox_Source" ]; then
		echo
		echo "## Icons Source Exists:" "./tmp/Icons_Gruvbox_Source"
		echo
		return 0
	fi

	echo
	echo "mkdir -p ./tmp"
	mkdir -p ./tmp


	##
	## * https://github.com/jmattheis/gruvbox-dark-icons-gtk
	##
	echo "git clone https://github.com/jmattheis/gruvbox-dark-icons-gtk.git ./tmp/Icons_Gruvbox_Source"
	git clone https://github.com/jmattheis/gruvbox-dark-icons-gtk.git ./tmp/Icons_Gruvbox_Source

}

theme_asset_install_gruvbox_icon_install () {

	if ! [ -a "./tmp/Icons_Gruvbox_Source" ]; then
		echo
		echo "## Icons Source / Gruvbox Not Exists:" "./tmp/Icons_Gruvbox_Source"
		echo
		return 0
	fi


	echo "mkdir -p $HOME/.icons"
	mkdir -p "$HOME/.icons"

	echo "cp -a ./tmp/Icons_Gruvbox_Source $HOME/.icons/Gruvbox-Dark"
	cp -a "./tmp/Icons_Gruvbox_Source" "$HOME/.icons/Gruvbox-Dark"

	rm -rf "$HOME/.icons/Gruvbox-Dark/.git"

	#rsync -r --exclude '.git' "./tmp/Icons_Gruvbox_Source" "$HOME/.icons/Gruvbox-Dark"
}


##
### Tail: Theme / Gruvbox / Icon
################################################################################


################################################################################
### Head: Theme / Rgaps / Xfwm4
##
theme_asset_install_rgaps_xfwm4 () {

	echo

	if [ -a "$HOME/.themes/RGapsBlendNoButtons" ]; then
		echo
		echo "## Theme Exists:" "$HOME/.themes/RGapsBlendNoButtons"
		echo
		return 0
	fi


	theme_asset_install_rgaps_xfwm4_download

	theme_asset_install_rgaps_xfwm4_install
}

theme_asset_install_rgaps_xfwm4_download () {

	if [ -a "./tmp/Theme_Rgaps_Source" ]; then
		echo
		echo "## Theme Source Exists:" "./tmp/Theme_Rgaps_Source"
		echo
		return 0
	fi

	echo
	echo "mkdir -p ./tmp"
	mkdir -p ./tmp


	##
	## * https://github.com/samwhelp/theme-collections-xfwm4
	##
	echo "git clone https://github.com/samwhelp/theme-collections-xfwm4.git ./tmp/Theme_Rgaps_Source"
	git clone https://github.com/samwhelp/theme-collections-xfwm4.git ./tmp/Theme_Rgaps_Source

}

theme_asset_install_rgaps_xfwm4_install () {

	if ! [ -a "./tmp/Theme_Rgaps_Source/themes/RGapsBlendNoButtons" ]; then
		echo
		echo "## Theme Source / RGapsBlendNoButtons Not Exists:" "./tmp/Theme_Rgaps_Source/themes/RGapsBlendNoButtons"
		echo
		return 0
	fi


	echo "mkdir -p $HOME/.themes"
	mkdir -p "$HOME/.themes"

	echo "cp -a ./tmp/Theme_Rgaps_Source/themes/RGapsBlendNoButtons $HOME/.themes/RGapsBlendNoButtons"
	cp -a "./tmp/Theme_Rgaps_Source/themes/RGapsBlendNoButtons" "$HOME/.themes/RGapsBlendNoButtons"

}


##
### Tail: Theme / Rgaps / Xfwm4
################################################################################


################################################################################
### Head: Wallpaper
##
wallpaper_asset_install () {

	echo "## Asset: wallpaper"
	echo

	wallpaper_asset_install_wallpaper_select_xfce

	echo

}

##
### Tail: Wallpaper
################################################################################


################################################################################
### Head: Wallpaper
##
wallpaper_asset_install_wallpaper_select_xfce () {


	echo

	if [ -a "$HOME/.local/bin/wallpaper-select-xfce" ]; then
		echo
		echo "## Tool Exists:" "$HOME/.local/bin/wallpaper-select-xfce"
		echo
		return 0
	fi

	echo

	echo "wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce/remote-install.sh' -q -O - | bash"
	wget 'https://raw.githubusercontent.com/samwhelp/note-about-fzf/gh-pages/_demo/project/wallpaper-select/wallpaper-select-xfce/remote-install.sh' -q -O - | bash


	echo

}

##
### Tail: Wallpaper
################################################################################


################################################################################
### Head: main
##
main_asset_install () {
	theme_asset_install
	wallpaper_asset_install
}
## start
main_asset_install

##
### Tail: main
################################################################################
