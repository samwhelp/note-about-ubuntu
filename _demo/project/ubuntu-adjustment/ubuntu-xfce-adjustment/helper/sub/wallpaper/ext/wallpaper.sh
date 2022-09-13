

################################################################################
### Head: Mod / Wallpaper / Package / Install
##

mod_wallpaper_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_wallpaper_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_WALLPAPER_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_WALLPAPER_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_wallpaper_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_WALLPAPER_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Wallpaper / Package / Install
################################################################################




################################################################################
### Head: Mod / Wallpaper / Config / Install
##

mod_wallpaper_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_wallpaper_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/wallpaper/Wallpaper"
	#mkdir -p "${HOME}/.config/wallpaper/Wallpaper"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/wallpaper/wallpaper.conf ${HOME}/.config/wallpaper/wallpaper.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/wallpaper/wallpaper.conf" "${HOME}/.config/wallpaper/wallpaper.conf"



	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/wallpaper/. ${HOME}/.config/wallpaper/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/wallpaper/." "${HOME}/.config/wallpaper/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/wallpaper/. ${HOME}/.config/wallpaper/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/wallpaper/." "${HOME}/.config/wallpaper/"


}

##
### Tail: Mod / Wallpaper / Config / Install
################################################################################




################################################################################
### Head: Mod / Wallpaper / Asset / Install
##

mod_wallpaper_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_wallpaper_asset_install'
	util_error_echo '##'
	util_error_echo


	mod_wallpaper_asset_install_wallpaper_download

}

##
### Tail: Mod / Wallpaper / Asset / Install
################################################################################
