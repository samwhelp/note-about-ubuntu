

################################################################################
### Head: Mod / Locale / Package / Install
##

mod_locale_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_locale_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_LOCALE_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_LOCALE_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_locale_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_LOCALE_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Locale / Package / Install
################################################################################




################################################################################
### Head: Mod / Locale / Config / Install
##

mod_locale_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_locale_config_install'
	util_error_echo '##'
	util_error_echo

	##
	## locale
	##

	util_error_echo "sudo install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/default/locale /etc/default/locale"
	sudo install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/default/locale" "/etc/default/locale"


}

##
### Tail: Mod / Locale / Config / Install
################################################################################




################################################################################
### Head: Mod / Locale / Asset / Install
##

mod_locale_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_locale_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Locale / Asset / Install
################################################################################
