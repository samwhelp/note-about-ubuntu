

################################################################################
### Head: Mod / Helper / Package / Install
##

mod_helper_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_helper_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_HELPER_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_HELPER_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_helper_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_HELPER_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Helper / Package / Install
################################################################################




################################################################################
### Head: Mod / Helper / Config / Install
##

mod_helper_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_helper_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/helper"
	#mkdir -p "${HOME}/.config/helper"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/helper/helper.conf ${HOME}/.config/helper/helper.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/helper/helper.conf" "${HOME}/.config/helper/helper.conf"

}

##
### Tail: Mod / Helper / Config / Install
################################################################################




################################################################################
### Head: Mod / Helper / Asset / Install
##

mod_helper_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_helper_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Helper / Asset / Install
################################################################################
