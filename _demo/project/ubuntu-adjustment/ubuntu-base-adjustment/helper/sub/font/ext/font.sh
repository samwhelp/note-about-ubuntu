

################################################################################
### Head: Mod / Font / Package / Install
##

mod_font_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_font_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_FONT_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_FONT_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_font_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_FONT_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Font / Package / Install
################################################################################




################################################################################
### Head: Mod / Font / Config / Install
##

mod_font_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_font_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/font"
	#mkdir -p "${HOME}/.config/font"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/font/font.conf ${HOME}/.config/font/font.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/font/font.conf" "${HOME}/.config/font/font.conf"

}

##
### Tail: Mod / Font / Config / Install
################################################################################




################################################################################
### Head: Mod / Font / Asset / Install
##

mod_font_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_font_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Font / Asset / Install
################################################################################
