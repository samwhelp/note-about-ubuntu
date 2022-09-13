

################################################################################
### Head: Mod / Style / Package / Install
##

mod_style_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_style_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_STYLE_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_STYLE_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_style_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_STYLE_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Style / Package / Install
################################################################################




################################################################################
### Head: Mod / Style / Config / Install
##

mod_style_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_style_config_install'
	util_error_echo '##'
	util_error_echo


	##
	## gtk2
	##

	util_error_echo "mkdir -p ${HOME}/.config/gtk-2.0"
	mkdir -p "${HOME}/.config/gtk-2.0"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.gtkrc-2.0 ${HOME}/.gtkrc-2.0"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.gtkrc-2.0" "${HOME}/.gtkrc-2.0"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.gtkrc-2.0.mine ${HOME}/.gtkrc-2.0.mine"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.gtkrc-2.0.mine" "${HOME}/.gtkrc-2.0.mine"


	##
	## gtk3
	##

	util_error_echo "mkdir -p ${HOME}/.config/gtk-3.0"
	mkdir -p "${HOME}/.config/gtk-3.0"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gtk-3.0/settings.ini ${HOME}/.config/gtk-3.0/settings.ini"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gtk-3.0/settings.ini" "${HOME}/.config/gtk-3.0/settings.ini"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gtk-3.0/gtk.css ${HOME}/.config/gtk-3.0/gtk.css"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gtk-3.0/gtk.css" "${HOME}/.config/gtk-3.0/gtk.css"


	##
	## xsettingsd
	##

	util_error_echo "mkdir -p ${HOME}/.config/xsettingsd"
	mkdir -p "${HOME}/.config/xsettingsd"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xsettingsd/xsettingsd.conf ${HOME}/.config/xsettingsd/xsettingsd.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xsettingsd/xsettingsd.conf" "${HOME}/.config/xsettingsd/xsettingsd.conf"


	##
	## qt-style-follow-gtk
	##

	util_error_echo "install sudo -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/profile.d/qt-style-follow-gtk.sh /etc/profile.d/qt-style-follow-gtk.sh"
	sudo install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/profile.d/qt-style-follow-gtk.sh" "/etc/profile.d/qt-style-follow-gtk.sh"



	##
	## qt5ct
	##

	util_error_echo "mkdir -p ${HOME}/.config/qt5ct"
	mkdir -p "${HOME}/.config/qt5ct"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/qt5ct/qt5ct.conf ${HOME}/.config/qt5ct/qt5ct.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/qt5ct/qt5ct.conf" "${HOME}/.config/qt5ct/qt5ct.conf"



}

##
### Tail: Mod / Style / Config / Install
################################################################################




################################################################################
### Head: Mod / Style / Asset / Install
##

mod_style_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_style_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Style / Asset / Install
################################################################################
