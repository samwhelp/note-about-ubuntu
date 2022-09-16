

################################################################################
### Head: Mod / Bspwm / Package / Install
##

mod_bspwm_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_bspwm_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_BSPWM_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_BSPWM_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_bspwm_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_BSPWM_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Bspwm / Package / Install
################################################################################




################################################################################
### Head: Mod / Bspwm / Config / Install
##

mod_bspwm_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_bspwm_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/bspwm"
	mkdir -p "${HOME}/.config/bspwm"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/bspwm/bspwm.conf ${HOME}/.config/bspwm/bspwm.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/bspwm/bspwm.conf" "${HOME}/.config/bspwm/bspwm.conf"



	util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/bspwm/. ${HOME}/.config/bspwm/"
	cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/bspwm/." "${HOME}/.config/bspwm/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/bspwm/. ${HOME}/.config/bspwm/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/bspwm/." "${HOME}/.config/bspwm/"


}

##
### Tail: Mod / Bspwm / Config / Install
################################################################################




################################################################################
### Head: Mod / Bspwm / Asset / Install
##

mod_bspwm_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_bspwm_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Bspwm / Asset / Install
################################################################################
