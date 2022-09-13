

################################################################################
### Head: Mod / Pcmanfm-Qt / Package / Install
##

mod_pcmanfm_qt_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_pcmanfm_qt_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_PCMANFM_QT_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_PCMANFM_QT_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_pcmanfm_qt_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_PCMANFM_QT_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Pcmanfm-Qt / Package / Install
################################################################################




################################################################################
### Head: Mod / Pcmanfm-Qt / Config / Install
##

mod_pcmanfm_qt_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_pcmanfm_qt_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/pcmanfm-qt/default"
	mkdir -p "${HOME}/.config/pcmanfm-qt/default"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcman/pcmanfm-qt/default/settings.conf ${HOME}/.config/pcmanfm-qt/default/settings.conf"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm-qt/default/settings.conf" "${HOME}/.config/pcmanfm-qt/default/settings.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm-qt/. ${HOME}/.config/pcmanfm-qt/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm-qt/." "${HOME}/.config/pcmanfm-qt/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm-qt/. ${HOME}/.config/pcmanfm-qt/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcmanfm-qt/." "${HOME}/.config/pcmanfm-qt/"


}

##
### Tail: Mod / Pcmanfm-Qt / Config / Install
################################################################################




################################################################################
### Head: Mod / Pcmanfm-Qt / Asset / Install
##

mod_pcmanfm_qt_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_pcmanfm_qt_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Pcmanfm-Qt / Asset / Install
################################################################################
