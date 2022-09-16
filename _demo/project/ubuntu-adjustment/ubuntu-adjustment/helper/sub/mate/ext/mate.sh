

################################################################################
### Head: Mod / Mate / Package / Install
##

mod_mate_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mate_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_MATE_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_MATE_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_mate_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_MATE_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Mate / Package / Install
################################################################################




################################################################################
### Head: Mod / Mate / Config / Install
##

mod_mate_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mate_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/mate"
	#mkdir -p "${HOME}/.config/mate"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mate/mate.conf ${HOME}/.config/mate/mate.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mate/mate.conf" "${HOME}/.config/mate/mate.conf"



	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mate/. ${HOME}/.config/mate/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mate/." "${HOME}/.config/mate/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mate/. ${HOME}/.config/mate/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mate/." "${HOME}/.config/mate/"


}

##
### Tail: Mod / Mate / Config / Install
################################################################################




################################################################################
### Head: Mod / Mate / Asset / Install
##

mod_mate_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mate_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Mate / Asset / Install
################################################################################
