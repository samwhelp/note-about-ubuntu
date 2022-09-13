

################################################################################
### Head: Mod / Xfce4-Terminal / Package / Install
##

mod_xfce4_terminal_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xfce4_terminal_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_XFCE4_TERMINAL_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_XFCE4_TERMINAL_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_xfce4_terminal_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_XFCE4_TERMINAL_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Xfce4-Terminal / Package / Install
################################################################################




################################################################################
### Head: Mod / Xfce4-Terminal / Config / Install
##

mod_xfce4_terminal_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xfce4_terminal_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/xfce4/terminal"
	mkdir -p "${HOME}/.config/xfce4/terminal"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcman/xfce4/terminal/terminalrc ${HOME}/.config/xfce4/terminal/terminalrc"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/terminal/terminalrc" "${HOME}/.config/xfce4/terminal/terminalrc"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/. ${HOME}/.config/xfce4/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/." "${HOME}/.config/xfce4/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/. ${HOME}/.config/xfce4/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/xfce4/." "${HOME}/.config/xfce4/"


}

##
### Tail: Mod / Xfce4-Terminal / Config / Install
################################################################################




################################################################################
### Head: Mod / Xfce4-Terminal / Asset / Install
##

mod_xfce4_terminal_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xfce4_terminal_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Xfce4-Terminal / Asset / Install
################################################################################
