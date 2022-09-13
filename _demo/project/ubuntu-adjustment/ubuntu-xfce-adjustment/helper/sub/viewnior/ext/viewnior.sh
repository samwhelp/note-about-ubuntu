

################################################################################
### Head: Mod / Viewnior / Package / Install
##

mod_viewnior_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_viewnior_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_VIEWNIOR_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_VIEWNIOR_PACKAGE_LIST_INSTALL_FILE_PATH}"

}


mod_viewnior_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_VIEWNIOR_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Viewnior / Package / Install
################################################################################




################################################################################
### Head: Mod / Viewnior / Config / Install
##

mod_viewnior_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_viewnior_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/viewnior"
	mkdir -p "${HOME}/.config/viewnior"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/viewnior/viewnior.conf ${HOME}/.config/viewnior/viewnior.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/viewnior/viewnior.conf" "${HOME}/.config/viewnior/viewnior.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/viewnior/. ${HOME}/.config/viewnior/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/viewnior/." "${HOME}/.config/viewnior/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/viewnior/. ${HOME}/.config/viewnior/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/viewnior/." "${HOME}/.config/viewnior/"


}

##
### Tail: Mod / Viewnior / Config / Install
################################################################################




################################################################################
### Head: Mod / Viewnior / Asset / Install
##

mod_viewnior_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_viewnior_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Viewnior / Asset / Install
################################################################################
