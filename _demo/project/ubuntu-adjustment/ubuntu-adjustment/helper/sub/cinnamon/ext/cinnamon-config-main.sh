

################################################################################
### Head: cinnamon
##
sys_cinnamon_config_install_config_main () {

	echo
	echo "## Config: cinnamon"
	echo

	cinnamon_config_main_config

	cinnamon_config_misc_config

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / config / main
##

cinnamon_config_main_config () {

	echo
	echo "##"
	echo "## Config: cinnamon_config_main_config"
	echo "##"
	echo

	cinnamon_config_main_config_applets

}

cinnamon_config_main_config_applets () {



	echo 'gsettings set org.cinnamon enabled-applets "'"['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"'"'
	gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:show-desktop@cinnamon.org:1', 'panel1:left:2:grouped-window-list@cinnamon.org:2', 'panel1:right:1:systray@cinnamon.org:3', 'panel1:right:2:xapp-status@cinnamon.org:4', 'panel1:right:3:notifications@cinnamon.org:5', 'panel1:right:4:printers@cinnamon.org:6', 'panel1:right:5:removable-drives@cinnamon.org:7', 'panel1:right:6:keyboard@cinnamon.org:8', 'panel1:right:7:favorites@cinnamon.org:9', 'panel1:right:8:network@cinnamon.org:10', 'panel1:right:9:sound@cinnamon.org:11', 'panel1:right:10:power@cinnamon.org:12', 'panel1:center:0:calendar@cinnamon.org:13', 'panel1:right:0:workspace-switcher@cinnamon.org:14']"

	echo "gsettings set org.cinnamon next-applet-id 15"
	gsettings set org.cinnamon next-applet-id 15

	echo 'gsettings set org.cinnamon panels-enabled "'"['1:0:top']"'"'
	gsettings set org.cinnamon panels-enabled "['1:0:top']"

	echo "gsettings set org.cinnamon panel-edit-mode false"
	gsettings set org.cinnamon panel-edit-mode false



}

##
### Tail: cinnamon / config / main
################################################################################




################################################################################
### Head: cinnamon / config / misc
##

cinnamon_config_misc_config () {

	echo
	echo "##"
	echo "## Config: cinnamon_config_misc_config"
	echo "##"
	echo

	cinnamon_config_misc_config_rc

}


cinnamon_config_misc_config_rc () {

	util_error_echo "rm -rf $HOME/.cinnamon"
	rm -rf "$HOME/.cinnamon"

	util_error_echo "mkdir -p $HOME/.cinnamon"
	mkdir -p "$HOME/.cinnamon"

	util_error_echo "cp -rf ${THE_OVERLAY_DIR_PATH}/etc/skel/.cinnamon/. ${HOME}/.cinnamon/"
	cp -rf "${THE_OVERLAY_DIR_PATH}/etc/skel/.cinnamon/." "${HOME}/.cinnamon/"

}

##
### Tail: cinnamon / config / misc
################################################################################
