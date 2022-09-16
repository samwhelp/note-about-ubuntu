

################################################################################
### Head: cinnamon
##
sys_cinnamon_config_install_cinnamon_favorite_apps () {

	echo
	echo "## Config: sys_cinnamon_config_install_cinnamon_favorite_apps"
	echo

	cinnamon_favorite_apps_config

	return 0

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / favorite-apps
##

cinnamon_favorite_apps_config () {

	echo 'gsettings set org.cinnamon favorite-apps "'"['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'cinnamon-settings.desktop']"'"'
	gsettings set org.cinnamon favorite-apps "['pcmanfm-qt.desktop', 'org.xfce.mousepad.desktop', 'org.kde.falkon.desktop', 'sakura.desktop', 'cinnamon-settings.desktop']"


	echo "gsettings set org.cinnamon.desktop.default-applications.terminal exec 'sakura'"
	gsettings set org.cinnamon.desktop.default-applications.terminal exec 'sakura'

}

##
### Tail: cinnamon / favorite-apps
################################################################################
