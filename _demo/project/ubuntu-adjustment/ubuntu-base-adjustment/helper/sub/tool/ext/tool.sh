

################################################################################
### Head: Mod / Tool / Package / Install
##

mod_tool_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_tool_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_TOOL_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_TOOL_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_tool_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_TOOL_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Tool / Package / Install
################################################################################




################################################################################
### Head: Mod / Tool / Config / Install
##

mod_tool_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_tool_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/tool"
	#mkdir -p "${HOME}/.config/tool"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/tool/tool.conf ${HOME}/.config/tool/tool.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/tool/tool.conf" "${HOME}/.config/tool/tool.conf"

}

##
### Tail: Mod / Tool / Config / Install
################################################################################




################################################################################
### Head: Mod / Tool / Asset / Install
##

mod_tool_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_tool_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Tool / Asset / Install
################################################################################
