

################################################################################
### Head: Mod / Apt / Package / Install
##

mod_apt_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_apt_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_APT_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_APT_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_apt_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_APT_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Apt / Package / Install
################################################################################




################################################################################
### Head: Mod / Apt / Config / Install
##

mod_apt_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_apt_config_install'
	util_error_echo '##'
	util_error_echo

	##
	## apt-sources-list
	##

	util_error_echo "sudo install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/apt/sources.list /etc/apt/sources.list"
	sudo install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/apt/sources.list" "/etc/apt/sources.list"


}

##
### Tail: Mod / Apt / Config / Install
################################################################################




################################################################################
### Head: Mod / Apt / Asset / Install
##

mod_apt_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_apt_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Apt / Asset / Install
################################################################################
