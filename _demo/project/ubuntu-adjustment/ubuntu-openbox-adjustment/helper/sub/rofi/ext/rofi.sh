

################################################################################
### Head: Mod / Rofi / Package / Install
##

mod_rofi_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_rofi_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_ROFI_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_ROFI_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_rofi_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_ROFI_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Rofi / Package / Install
################################################################################




################################################################################
### Head: Mod / Rofi / Config / Install
##

mod_rofi_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_rofi_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/.config/rofi"
	mkdir -p "${HOME}/.config/rofi"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/rofi/config.rasi ${HOME}/.config/rofi/config.rasi"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/rofi/config.rasi" "${HOME}/.config/rofi/config.rasi"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/rofi/. ${HOME}/.config/rofi/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/rofi/." "${HOME}/.config/rofi/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/rofi/. ${HOME}/.config/rofi/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/rofi/." "${HOME}/.config/rofi/"


	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.local/share/applications/rofi-show-drun.desktop ${HOME}/.local/share/applications/rofi-show-drun.desktop"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.local/share/applications/rofi-show-drun.desktop" "${HOME}/.local/share/applications/rofi-show-drun.desktop"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.local/share/applications/rofi-show-window.desktop ${HOME}/.local/share/applications/rofi-show-window.desktop"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.local/share/applications/rofi-show-window.desktop" "${HOME}/.local/share/applications/rofi-show-window.desktop"

	util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.local/share/applications/rofi-show-run.desktop ${HOME}/.local/share/applications/rofi-show-run.desktop"
	install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.local/share/applications/rofi-show-run.desktop" "${HOME}/.local/share/applications/rofi-show-run.desktop"


}

##
### Tail: Mod / Rofi / Config / Install
################################################################################




################################################################################
### Head: Mod / Rofi / Asset / Install
##

mod_rofi_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_rofi_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Rofi / Asset / Install
################################################################################
