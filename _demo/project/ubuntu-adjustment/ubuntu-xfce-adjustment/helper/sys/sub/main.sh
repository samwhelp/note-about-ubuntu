

################################################################################
### Head: Mod / Main / Package / Install
##

mod_main_package_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_main_package_install'
	util_error_echo '##'
	util_error_echo

	local package_list="$(mod_main_package_list_find_for_install)"

	#util_error_echo "$package_list"

	util_error_echo "sudo apt-get install" ${package_list}
	sudo apt-get install ${package_list}

}

mod_main_package_list_find_for_install () {

	##
	## tool
	##
	mod_xfce4_package_list_find_for_install
	mod_sakura_package_list_find_for_install
	mod_pcmanfm_qt_package_list_find_for_install
	mod_pcmanfm_package_list_find_for_install
	mod_mousepad_package_list_find_for_install
	mod_viewnior_package_list_find_for_install
	mod_mpv_package_list_find_for_install

	##
	## env
	##
	mod_fcitx5_package_list_find_for_install
	mod_font_package_list_find_for_install
	mod_rofi_package_list_find_for_install
	mod_theme_package_list_find_for_install
	mod_xdg_package_list_find_for_install
	mod_tool_package_list_find_for_install
	mod_helper_package_list_find_for_install
	mod_wallpaper_package_list_find_for_install

	##
	## sudo
	##
	#mod_apt_package_list_find_for_install
	mod_locale_package_list_find_for_install
	mod_style_package_list_find_for_install

}

##
### Tail: Mod / Main / Package / Install
################################################################################




################################################################################
### Head: Mod / Main / Config / Install
##

mod_main_config_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_main_config_install'
	util_error_echo '##'
	util_error_echo
	util_error_echo

	##
	## tool
	##
	mod_xfce4_config_install
	mod_sakura_config_install
	mod_pcmanfm_qt_config_install
	mod_pcmanfm_config_install
	mod_mousepad_config_install
	mod_viewnior_config_install
	mod_mpv_config_install

	##
	## env
	##
	mod_fcitx5_config_install
	mod_font_config_install
	mod_rofi_config_install
	mod_theme_config_install
	mod_xdg_config_install
	mod_tool_config_install
	mod_helper_config_install
	mod_wallpaper_config_install

	##
	## sudo
	##
	#mod_apt_config_install
	mod_locale_config_install
	mod_style_config_install


	util_error_echo

}

##
### Tail: Mod / Main / Config / Install
################################################################################




################################################################################
### Head: Mod / Main / Asset / Install
##

mod_main_asset_install () {

	util_error_echo
	util_error_echo '##'
	util_error_echo '## mod_main_asset_install'
	util_error_echo '##'
	util_error_echo

	##
	## tool
	##
	mod_xfce4_asset_install
	mod_sakura_asset_install
	mod_pcmanfm_qt_asset_install
	mod_pcmanfm_asset_install
	mod_mousepad_asset_install
	mod_viewnior_asset_install
	mod_mpv_asset_install

	##
	## env
	##
	mod_fcitx5_asset_install
	mod_font_asset_install
	mod_rofi_asset_install
	mod_theme_asset_install
	mod_xdg_asset_install
	mod_tool_asset_install
	mod_helper_asset_install
	mod_wallpaper_asset_install

	##
	## sudo
	##
	#mod_apt_asset_install
	mod_locale_asset_install
	mod_style_asset_install

	util_error_echo

}

##
### Tail: Mod / Main / Asset / Install
################################################################################
