

################################################################################
### Head: Mod / Mate Media / Package / Install
##

mod_mate_media_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mate_media_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_MATE_MEDIA_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_MATE_MEDIA_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_mate_media_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_MATE_MEDIA_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Mate Media / Package / Install
################################################################################




################################################################################
### Head: Mod / Mate Media / Config / Install
##

mod_mate_media_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mate_media_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/autostart"
	mkdir -p "${HOME}/.config/autostart"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/autostart/mate-volume-control-status-icon.desktop ${HOME}/.config/autostart/mate-volume-control-status-icon.desktop"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/autostart/mate-volume-control-status-icon.desktop" "${HOME}/.config/autostart/mate-volume-control-status-icon.desktop"


	util_error_echo
	util_error_echo "## Check:"
	util_error_echo
	util_error_echo "grep '^OnlyShowIn' ${HOME}/.config/autostart/mate-volume-control-status-icon.desktop"
	grep '^OnlyShowIn' "${HOME}/.config/autostart/mate-volume-control-status-icon.desktop"

}

##
### Tail: Mod / Mate Media / Config / Install
################################################################################




################################################################################
### Head: Mod / Mate Media / Asset / Install
##

mod_mate_media_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mate_media_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Mate Media / Asset / Install
################################################################################
