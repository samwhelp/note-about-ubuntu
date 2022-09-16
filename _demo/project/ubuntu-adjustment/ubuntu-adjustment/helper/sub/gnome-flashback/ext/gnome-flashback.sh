

################################################################################
### Head: Mod / Gnome-Flashback / Package / Install
##

mod_gnome_flashback_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_gnome_flashback_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_GNOME_FLASHBACK_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_GNOME_FLASHBACK_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_gnome_flashback_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_GNOME_FLASHBACK_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Gnome-Flashback / Package / Install
################################################################################




################################################################################
### Head: Mod / Gnome-Flashback / Config / Install
##

mod_gnome_flashback_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_gnome_flashback_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/gnome-flashback/default"
	#mkdir -p "${HOME}/.config/gnome-flashback/default"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/pcman/gnome-flashback/default/settings.conf ${HOME}/.config/gnome-flashback/default/settings.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-flashback/default/settings.conf" "${HOME}/.config/gnome-flashback/default/settings.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-flashback/. ${HOME}/.config/gnome-flashback/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-flashback/." "${HOME}/.config/gnome-flashback/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-flashback/. ${HOME}/.config/gnome-flashback/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/gnome-flashback/." "${HOME}/.config/gnome-flashback/"


}

##
### Tail: Mod / Gnome-Flashback / Config / Install
################################################################################




################################################################################
### Head: Mod / Gnome-Flashback / Asset / Install
##

mod_gnome_flashback_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_gnome_flashback_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Gnome-Flashback / Asset / Install
################################################################################
