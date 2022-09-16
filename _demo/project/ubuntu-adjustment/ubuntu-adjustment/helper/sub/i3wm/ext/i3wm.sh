

################################################################################
### Head: Mod / I3wm / Package / Install
##

mod_i3wm_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_i3wm_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_I3WM_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_I3WM_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_i3wm_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_I3WM_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / I3wm / Package / Install
################################################################################




################################################################################
### Head: Mod / I3wm / Config / Install
##

mod_i3wm_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_i3wm_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/i3"
	mkdir -p "${HOME}/.config/i3"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/i3/i3wm.conf ${HOME}/.config/i3/i3wm.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/i3/i3wm.conf" "${HOME}/.config/i3/i3wm.conf"



	util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/i3/. ${HOME}/.config/i3/"
	cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/i3/." "${HOME}/.config/i3/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/i3/. ${HOME}/.config/i3/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/i3/." "${HOME}/.config/i3/"


}

##
### Tail: Mod / I3wm / Config / Install
################################################################################




################################################################################
### Head: Mod / I3wm / Asset / Install
##

mod_i3wm_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_i3wm_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / I3wm / Asset / Install
################################################################################
