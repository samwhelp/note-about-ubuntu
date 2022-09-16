

################################################################################
### Head: Mod / Gnome-Shell / Package / Install
##

mod_gnome_shell_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_gnome_shell_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_GNOME_SHELL_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_GNOME_SHELL_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_gnome_shell_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_GNOME_SHELL_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Gnome-Shell / Package / Install
################################################################################




################################################################################
### Head: Mod / Gnome-Shell / Config / Install
##

mod_gnome_shell_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_gnome_shell_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/gnome-shell/default"
	#mkdir -p "${HOME}/.config/gnome-shell/default"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcman/gnome-shell/default/settings.conf ${HOME}/.config/gnome-shell/default/settings.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-shell/default/settings.conf" "${HOME}/.config/gnome-shell/default/settings.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-shell/. ${HOME}/.config/gnome-shell/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-shell/." "${HOME}/.config/gnome-shell/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-shell/. ${HOME}/.config/gnome-shell/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-shell/." "${HOME}/.config/gnome-shell/"


}

##
### Tail: Mod / Gnome-Shell / Config / Install
################################################################################




################################################################################
### Head: Mod / Gnome-Shell / Asset / Install
##

mod_gnome_shell_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_gnome_shell_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Gnome-Shell / Asset / Install
################################################################################
