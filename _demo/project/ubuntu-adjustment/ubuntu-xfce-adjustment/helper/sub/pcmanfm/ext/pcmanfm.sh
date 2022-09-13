

################################################################################
### Head: Mod / Pcmanfm / Package / Install
##

mod_pcmanfm_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_pcmanfm_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_PCMANFM_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_PCMANFM_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_pcmanfm_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_PCMANFM_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Pcmanfm / Package / Install
################################################################################




################################################################################
### Head: Mod / Pcmanfm / Config / Install
##

mod_pcmanfm_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_pcmanfm_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/pcmanfm/default"
	mkdir -p "${HOME}/.config/pcmanfm/default"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcman/pcmanfm/default/pcmanfm.conf ${HOME}/.config/pcmanfm/default/pcmanfm.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm/default/pcmanfm.conf" "${HOME}/.config/pcmanfm/default/pcmanfm.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm/. ${HOME}/.config/pcmanfm/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm/." "${HOME}/.config/pcmanfm/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm/. ${HOME}/.config/pcmanfm/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm/." "${HOME}/.config/pcmanfm/"


}

##
### Tail: Mod / Pcmanfm / Config / Install
################################################################################




################################################################################
### Head: Mod / Pcmanfm / Asset / Install
##

mod_pcmanfm_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_pcmanfm_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Pcmanfm / Asset / Install
################################################################################
