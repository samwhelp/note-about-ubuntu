

################################################################################
### Head: Mod / Openbox / Package / Install
##

mod_openbox_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_openbox_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_OPENBOX_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_OPENBOX_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_openbox_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_OPENBOX_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Openbox / Package / Install
################################################################################




################################################################################
### Head: Mod / Openbox / Config / Install
##

mod_openbox_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_openbox_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/openbox"
	mkdir -p "${HOME}/.config/openbox"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/openbox/openbox.conf ${HOME}/.config/openbox/openbox.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/openbox/openbox.conf" "${HOME}/.config/openbox/openbox.conf"



	util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/openbox/. ${HOME}/.config/openbox/"
	cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/openbox/." "${HOME}/.config/openbox/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/openbox/. ${HOME}/.config/openbox/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/openbox/." "${HOME}/.config/openbox/"


}

##
### Tail: Mod / Openbox / Config / Install
################################################################################




################################################################################
### Head: Mod / Openbox / Asset / Install
##

mod_openbox_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_openbox_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Openbox / Asset / Install
################################################################################
