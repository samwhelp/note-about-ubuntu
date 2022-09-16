

################################################################################
### Head: Mod / Plank / Package / Install
##

mod_plank_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_plank_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_PLANK_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_PLANK_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_plank_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_PLANK_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Plank / Package / Install
################################################################################




################################################################################
### Head: Mod / Plank / Config / Install
##

mod_plank_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_plank_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/plank"
	#mkdir -p "${HOME}/.config/plank"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/plank/plank.conf ${HOME}/.config/plank/plank.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/plank/plank.conf" "${HOME}/.config/plank/plank.conf"



	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/plank/. ${HOME}/.config/plank/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/plank/." "${HOME}/.config/plank/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/plank/. ${HOME}/.config/plank/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/plank/." "${HOME}/.config/plank/"


	sys_plank_config_install_plank_launchers

}

##
### Tail: Mod / Plank / Config / Install
################################################################################




################################################################################
### Head: Mod / Plank / Asset / Install
##

mod_plank_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_plank_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Plank / Asset / Install
################################################################################
