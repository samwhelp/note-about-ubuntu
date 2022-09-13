

################################################################################
### Head: Mod / Xdg / Package / Install
##

mod_xdg_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xdg_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_XDG_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_XDG_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_xdg_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_XDG_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Xdg / Package / Install
################################################################################




################################################################################
### Head: Mod / Xdg / Config / Install
##

mod_xdg_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xdg_config_install'
	util_error_echo '##'
	util_error_echo

	util_error_echo "mkdir -p ${HOME}/Templates"
	mkdir -p "${HOME}/Templates"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/empty.txt ${HOME}/Templates/empty.txt"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/empty.txt" "${HOME}/Templates/empty.txt"

	#util_error_echo "install -Dm755 ${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/bash.sh ${HOME}/Templates/bash.sh"
	#install -Dm755 "${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/bash.sh" "${HOME}/Templates/bash.sh"

	#util_error_echo "install -Dm755 ${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/pygithub.py ${HOME}/Templates/pygithub.py"
	#install -Dm755 "${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/pygithub.py" "${HOME}/Templates/pygithub.py"


	util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/. ${HOME}/Templates/"
	cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/." "${HOME}/Templates/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/. ${HOME}/Templates/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/Templates/." "${HOME}/Templates/"

}

##
### Tail: Mod / Xdg / Config / Install
################################################################################




################################################################################
### Head: Mod / Xdg / Asset / Install
##

mod_xdg_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_xdg_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo


}

##
### Tail: Mod / Xdg / Asset / Install
################################################################################
