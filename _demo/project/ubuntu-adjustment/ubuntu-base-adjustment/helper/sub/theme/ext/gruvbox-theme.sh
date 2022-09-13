

################################################################################
### Head: Theme
##
sys_gruvbox_theme_asset_install () {


	util_error_echo
	util_error_echo '## Gruvbox Theme'
	util_error_echo


	sys_gruvbox_theme_asset_install_gruvbox_gtk
	sys_gruvbox_theme_asset_install_gruvbox_icon


	echo

}

##
### Tail: Theme
################################################################################


################################################################################
### Head: Theme / Gruvbox / Gtk
##
sys_gruvbox_theme_asset_install_gruvbox_gtk () {

	echo

	if [ -a "${HOME}/.themes/Gruvbox" ]; then
		echo
		echo "## Theme Exists:" "${HOME}/.themes/Gruvbox"
		echo
		return 0
	fi


	sys_gruvbox_theme_asset_install_gruvbox_gtk_download

	sys_gruvbox_theme_asset_install_gruvbox_gtk_install
}

sys_gruvbox_theme_asset_install_gruvbox_gtk_download () {

	if [ -a "${HOME}/tmp/Theme_Gruvbox_Source" ]; then
		echo
		echo "## Theme Source Exists:" "${HOME}/tmp/Theme_Gruvbox_Source"
		echo
		return 0
	fi

	echo
	echo "mkdir -p ${HOME}/tmp"
	mkdir -p "${HOME}/tmp"


	##
	## * https://github.com/archcraft-os/archcraft-themes
	##
	echo "git clone https://github.com/archcraft-os/archcraft-themes.git ${HOME}/tmp/Theme_Gruvbox_Source"
	git clone https://github.com/archcraft-os/archcraft-themes.git "${HOME}/tmp/Theme_Gruvbox_Source"

}

sys_gruvbox_theme_asset_install_gruvbox_gtk_install () {

	if ! [ -a "${HOME}/tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox" ]; then
		echo
		echo "## Theme Source / Gruvbox Not Exists:" "${HOME}/tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox"
		echo
		return 0
	fi


	echo "mkdir -p ${HOME}/.themes/Gruvbox"
	mkdir -p "${HOME}/.themes/Gruvbox"

	echo "cp -rf ${HOME}/tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox/. ${HOME}/.themes/Gruvbox"
	cp -rf "${HOME}/tmp/Theme_Gruvbox_Source/archcraft-gtk-theme-gruvbox/files/Gruvbox/." "${HOME}/.themes/Gruvbox"

}


##
### Tail: Theme / Gruvbox / Gtk
################################################################################


################################################################################
### Head: Theme / Gruvbox / Icon
##
sys_gruvbox_theme_asset_install_gruvbox_icon () {

	echo

	if [ -a "${HOME}/.icons/Gruvbox-Dark" ]; then
		echo
		echo "## Icons Exists:" "${HOME}/.icons/Gruvbox-Dark"
		echo
		return 0
	fi


	sys_gruvbox_theme_asset_install_gruvbox_icon_download

	sys_gruvbox_theme_asset_install_gruvbox_icon_install
}

sys_gruvbox_theme_asset_install_gruvbox_icon_download () {

	if [ -a "${HOME}/tmp/Icons_Gruvbox_Source" ]; then
		echo
		echo "## Icons Source Exists:" "${HOME}/tmp/Icons_Gruvbox_Source"
		echo
		return 0
	fi

	echo
	echo "mkdir -p ${HOME}/tmp"
	mkdir -p "${HOME}/tmp"


	##
	## * https://github.com/jmattheis/gruvbox-dark-icons-gtk
	##
	echo "git clone https://github.com/jmattheis/gruvbox-dark-icons-gtk.git ${HOME}/tmp/Icons_Gruvbox_Source"
	git clone https://github.com/jmattheis/gruvbox-dark-icons-gtk.git ${HOME}/tmp/Icons_Gruvbox_Source

}

sys_gruvbox_theme_asset_install_gruvbox_icon_install () {

	if ! [ -a "${HOME}/tmp/Icons_Gruvbox_Source" ]; then
		echo
		echo "## Icons Source / Gruvbox Not Exists:" "${HOME}/tmp/Icons_Gruvbox_Source"
		echo
		return 0
	fi


	echo "mkdir -p ${HOME}/.icons/Gruvbox-Dark"
	mkdir -p "${HOME}/.icons/Gruvbox-Dark"

	echo "cp -a ${HOME}/tmp/Icons_Gruvbox_Source/. ${HOME}/.icons/Gruvbox-Dark"
	cp -rf "${HOME}/tmp/Icons_Gruvbox_Source/." "${HOME}/.icons/Gruvbox-Dark"

	rm -rf "${HOME}/.icons/Gruvbox-Dark/.git"

	#rsync -r --exclude '.git' "${HOME}/tmp/Icons_Gruvbox_Source" "${HOME}/.icons/Gruvbox-Dark"


	gtk-update-icon-cache -f -t "${HOME}/.icons/Gruvbox-Dark"

}


##
### Tail: Theme / Gruvbox / Icon
################################################################################
