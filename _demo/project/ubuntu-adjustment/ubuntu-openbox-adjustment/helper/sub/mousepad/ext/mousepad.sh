

################################################################################
### Head: Mod / Mousepad / Package / Install
##

mod_mousepad_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mousepad_package_install'
	util_error_echo '##'
	util_error_echo

	##util_error_echo "${THE_SUB_MOUSEPAD_PACKAGE_LIST_INSTALL_FILE_PATH}"

	sys_package_list_install "${THE_SUB_MOUSEPAD_PACKAGE_LIST_INSTALL_FILE_PATH}"

}

mod_mousepad_package_list_find_for_install () {
	sys_package_list_find "${THE_SUB_MOUSEPAD_PACKAGE_LIST_INSTALL_FILE_PATH}"
}

##
### Tail: Mod / Mousepad / Package / Install
################################################################################




################################################################################
### Head: Mod / Mousepad / Config / Install
##

mod_mousepad_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mousepad_config_install'
	util_error_echo '##'
	util_error_echo

	#util_error_echo "mkdir -p ${HOME}/.config/mousepad"
	#mkdir -p "${HOME}/.config/mousepad"

	#util_error_echo "install -Dm644 ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mousepad/mousepad.conf ${HOME}/.config/mousepad/mousepad.conf"
	#install -Dm644 "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mousepad/mousepad.conf" "${HOME}/.config/mousepad/mousepad.conf"


	#util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mousepad/. ${HOME}/.config/mousepad/"
	#cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mousepad/." "${HOME}/.config/mousepad/"

	#util_error_echo "cp -rfv ${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mousepad/. ${HOME}/.config/mousepad/"
	#cp -rfv "${THE_OVERLAY_DIR_PATH}/etc/skel/.config/mousepad/." "${HOME}/.config/mousepad/"


	mod_mousepad_config_install_by_gsettings

}

mod_mousepad_config_install_by_gsettings () {

	gsettings set org.xfce.mousepad.preferences.file add-last-end-of-line false
	gsettings set org.xfce.mousepad.preferences.file default-encoding 'UTF-8'
	gsettings set org.xfce.mousepad.preferences.file make-backup false
	gsettings set org.xfce.mousepad.preferences.file monitor-changes true
	gsettings set org.xfce.mousepad.preferences.file monitor-disabling-timer 500
	gsettings set org.xfce.mousepad.preferences.view auto-indent true
	gsettings set org.xfce.mousepad.preferences.view color-scheme 'oblivion'
	gsettings set org.xfce.mousepad.preferences.view font-name 'Monospace 14'
	gsettings set org.xfce.mousepad.preferences.view highlight-current-line false
	gsettings set org.xfce.mousepad.preferences.view indent-on-tab true
	gsettings set org.xfce.mousepad.preferences.view indent-width -1
	gsettings set org.xfce.mousepad.preferences.view insert-spaces false
	gsettings set org.xfce.mousepad.preferences.view match-braces true
	gsettings set org.xfce.mousepad.preferences.view right-margin-position 80
	gsettings set org.xfce.mousepad.preferences.view show-line-endings false
	gsettings set org.xfce.mousepad.preferences.view show-line-marks false
	gsettings set org.xfce.mousepad.preferences.view show-line-numbers true
	gsettings set org.xfce.mousepad.preferences.view show-right-margin true
	gsettings set org.xfce.mousepad.preferences.view show-whitespace true
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace inside true
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace leading true
	gsettings set org.xfce.mousepad.preferences.view.show-whitespace trailing true
	gsettings set org.xfce.mousepad.preferences.view smart-home-end 'disabled'
	gsettings set org.xfce.mousepad.preferences.view tab-width 4
	gsettings set org.xfce.mousepad.preferences.view use-default-monospace-font false
	gsettings set org.xfce.mousepad.preferences.view word-wrap true
	gsettings set org.xfce.mousepad.preferences.window always-show-tabs true
	gsettings set org.xfce.mousepad.preferences.window cycle-tabs false
	gsettings set org.xfce.mousepad.preferences.window default-tab-sizes '2,3,4,8'
	gsettings set org.xfce.mousepad.preferences.window menubar-visible-in-fullscreen 'auto'
	gsettings set org.xfce.mousepad.preferences.window menubar-visible true
	gsettings set org.xfce.mousepad.preferences.window old-style-menu true
	gsettings set org.xfce.mousepad.preferences.window opening-mode 'tab'
	gsettings set org.xfce.mousepad.preferences.window path-in-title true
	gsettings set org.xfce.mousepad.preferences.window recent-menu-items 10
	gsettings set org.xfce.mousepad.preferences.window remember-position false
	gsettings set org.xfce.mousepad.preferences.window remember-size true
	gsettings set org.xfce.mousepad.preferences.window remember-state true
	gsettings set org.xfce.mousepad.preferences.window statusbar-visible false
	gsettings set org.xfce.mousepad.preferences.window statusbar-visible-in-fullscreen 'auto'
	gsettings set org.xfce.mousepad.preferences.window toolbar-icon-size 'small-toolbar'
	gsettings set org.xfce.mousepad.preferences.window toolbar-style 'icons'
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible false
	gsettings set org.xfce.mousepad.preferences.window toolbar-visible-in-fullscreen 'auto'

}

##
### Tail: Mod / Mousepad / Config / Install
################################################################################




################################################################################
### Head: Mod / Mousepad / Asset / Install
##

mod_mousepad_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_mousepad_asset_install'
	util_error_echo '##'
	util_error_echo


	util_error_echo
	util_error_echo '## No Asset'
	util_error_echo

}

##
### Tail: Mod / Mousepad / Asset / Install
################################################################################
