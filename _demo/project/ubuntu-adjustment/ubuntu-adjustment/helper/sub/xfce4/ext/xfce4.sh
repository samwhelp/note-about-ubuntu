

################################################################################
### Head: Mod / Xfce4 / Package / Install
##

mod_xfce4_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xfce4_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_XFCE4_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_XFCE4_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_xfce4_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_XFCE4_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Xfce4 / Package / Install
################################################################################




################################################################################
### Head: Mod / Xfce4 / Config / Install
##

mod_xfce4_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xfce4_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/xfce4"
	mkdir -p "${HOME}/.config/xfce4"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/helpers.rc ${HOME}/.config/xfce4/helpers.rc"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/helpers.rc" "${HOME}/.config/xfce4/helpers.rc"



	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/. ${HOME}/.config/xfce4/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/." "${HOME}/.config/xfce4/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/. ${HOME}/.config/xfce4/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/." "${HOME}/.config/xfce4/"


}

##
### Tail: Mod / Xfce4 / Config / Install
################################################################################




################################################################################
### Head: Mod / Xfce4 / Asset / Install
##

mod_xfce4_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xfce4_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Xfce4 / Asset / Install
################################################################################
