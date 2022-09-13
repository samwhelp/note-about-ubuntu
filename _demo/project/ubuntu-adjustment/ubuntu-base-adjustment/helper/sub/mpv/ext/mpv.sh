

################################################################################
### Head: Mod / Mpv / Package / Install
##

mod_mpv_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mpv_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_MPV_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_MPV_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_mpv_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_MPV_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Mpv / Package / Install
################################################################################




################################################################################
### Head: Mod / Mpv / Config / Install
##

mod_mpv_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mpv_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/mpv"
	mkdir -p "${HOME}/.config/mpv"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mpv/mpv.conf ${HOME}/.config/mpv/mpv.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mpv/mpv.conf" "${HOME}/.config/mpv/mpv.conf"



	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mpv/. ${HOME}/.config/mpv/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mpv/." "${HOME}/.config/mpv/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mpv/. ${HOME}/.config/mpv/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mpv/." "${HOME}/.config/mpv/"


}

##
### Tail: Mod / Mpv / Config / Install
################################################################################




################################################################################
### Head: Mod / Mpv / Asset / Install
##

mod_mpv_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mpv_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Mpv / Asset / Install
################################################################################
