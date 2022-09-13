

################################################################################
### Head: Mod / Sakura / Package / Install
##

mod_sakura_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_sakura_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_SAKURA_PACKAGE_LIST_INSTALL_FILE_PATH}"

	##sys_package_list_install "${THE_SUB_SAKURA_PACKAGE_LIST_INSTALL_FILE_PATH}"
	sys_package_list_install_by_yay "${THE_SUB_SAKURA_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_sakura_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_SAKURA_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Sakura / Package / Install
################################################################################




################################################################################
### Head: Mod / Sakura / Config / Install
##

mod_sakura_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_sakura_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/sakura"
	mkdir -p "${HOME}/.config/sakura"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/sakura/sakura.conf ${HOME}/.config/sakura/sakura.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/sakura/sakura.conf" "${HOME}/.config/sakura/sakura.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/sakura/. ${HOME}/.config/sakura/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/sakura/." "${HOME}/.config/sakura/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/sakura/. ${HOME}/.config/sakura/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/sakura/." "${HOME}/.config/sakura/"


}

##
### Tail: Mod / Sakura / Config / Install
################################################################################




################################################################################
### Head: Mod / Sakura / Asset / Install
##

mod_sakura_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_sakura_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Sakura / Asset / Install
################################################################################
