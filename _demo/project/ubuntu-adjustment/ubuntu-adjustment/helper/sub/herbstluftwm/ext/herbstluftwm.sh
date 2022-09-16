

################################################################################
### Head: Mod / Herbstluftwm / Package / Install
##

mod_herbstluftwm_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_herbstluftwm_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_HERBSTLUFTWM_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_HERBSTLUFTWM_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_herbstluftwm_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_HERBSTLUFTWM_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Herbstluftwm / Package / Install
################################################################################




################################################################################
### Head: Mod / Herbstluftwm / Config / Install
##

mod_herbstluftwm_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_herbstluftwm_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/herbstluftwm"
	mkdir -p "${HOME}/.config/herbstluftwm"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/herbstluftwm/herbstluftwm.conf ${HOME}/.config/herbstluftwm/herbstluftwm.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/herbstluftwm/herbstluftwm.conf" "${HOME}/.config/herbstluftwm/herbstluftwm.conf"



	util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/herbstluftwm/. ${HOME}/.config/herbstluftwm/"
	cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/herbstluftwm/." "${HOME}/.config/herbstluftwm/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/herbstluftwm/. ${HOME}/.config/herbstluftwm/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/herbstluftwm/." "${HOME}/.config/herbstluftwm/"


}

##
### Tail: Mod / Herbstluftwm / Config / Install
################################################################################




################################################################################
### Head: Mod / Herbstluftwm / Asset / Install
##

mod_herbstluftwm_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_herbstluftwm_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Herbstluftwm / Asset / Install
################################################################################
