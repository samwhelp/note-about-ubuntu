

################################################################################
### Head: Mod / Theme / Package / Install
##

mod_theme_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_theme_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_THEME_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_THEME_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_theme_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_THEME_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Theme / Package / Install
################################################################################




################################################################################
### Head: Mod / Theme / Config / Install
##

mod_theme_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_theme_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/theme"
	#mkdir -p "${HOME}/.config/theme"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/theme/theme.conf ${HOME}/.config/theme/theme.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/theme/theme.conf" "${HOME}/.config/theme/theme.conf"

}

##
### Tail: Mod / Theme / Config / Install
################################################################################




################################################################################
### Head: Mod / Theme / Asset / Install
##

mod_theme_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_theme_asset_install'
	util_error_echo '##'
	util_error_echo


	sys_gruvbox_theme_asset_install

}

##
### Tail: Mod / Theme / Asset / Install
################################################################################
