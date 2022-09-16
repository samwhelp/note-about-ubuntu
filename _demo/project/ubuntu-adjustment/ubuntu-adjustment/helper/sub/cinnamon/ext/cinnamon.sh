

################################################################################
### Head: Mod / Cinnamon / Package / Install
##

mod_cinnamon_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_cinnamon_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_CINNAMON_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_CINNAMON_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_cinnamon_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_CINNAMON_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Cinnamon / Package / Install
################################################################################




################################################################################
### Head: Mod / Cinnamon / Config / Install
##

mod_cinnamon_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_cinnamon_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/cinnamon"
	#mkdir -p "${HOME}/.config/cinnamon"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/cinnamon/cinnamon.conf ${HOME}/.config/cinnamon/cinnamon.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/cinnamon/cinnamon.conf" "${HOME}/.config/cinnamon/cinnamon.conf"



	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/cinnamon/. ${HOME}/.config/cinnamon/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/cinnamon/." "${HOME}/.config/cinnamon/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/cinnamon/. ${HOME}/.config/cinnamon/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/cinnamon/." "${HOME}/.config/cinnamon/"

	sys_cinnamon_config_install_cinnamon_config_main


	sys_cinnamon_config_install_cinnamon_keybind_main
	sys_cinnamon_config_install_cinnamon_keybind_custom


	sys_cinnamon_config_install_cinnamon_favorite_apps


	sys_cinnamon_config_install_cinnamon_theme_main
	sys_cinnamon_config_install_cinnamon_wallpaper_default


	sys_cinnamon_config_install_cinnamon_autostart_plank
	#sys_cinnamon_config_install_cinnamon_autostart_cairo_dock


	sys_cinnamon_config_install_cinnamon_hot_corner

}

##
### Tail: Mod / Cinnamon / Config / Install
################################################################################




################################################################################
### Head: Mod / Cinnamon / Asset / Install
##

mod_cinnamon_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_cinnamon_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Cinnamon / Asset / Install
################################################################################
