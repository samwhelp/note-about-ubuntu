

################################################################################
### Head: cinnamon
##
sys_cinnamon_config_install_cinnamon_wallpaper_default () {

	echo
	echo "## Config: sys_cinnamon_config_install_cinnamon_wallpaper_default"
	echo

	cinnamon_wallpaper_default_config

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / wallpaper / default
##

cinnamon_wallpaper_default_config () {

	echo "gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'"
	gsettings set org.cinnamon.desktop.background picture-uri 'file:///usr/share/backgrounds/default.jpg'


	echo "gsettings set org.cinnamon.desktop.background picture-options 'zoom'"
	gsettings set org.cinnamon.desktop.background picture-options 'zoom'

	#echo "gsettings set org.cinnamon.desktop.background picture-options 'none'"
	#gsettings set org.cinnamon.desktop.background picture-options 'none'

	echo "gsettings set org.cinnamon.desktop.background color-shading-type 'solid'"
	gsettings set org.cinnamon.desktop.background color-shading-type 'solid'

	#echo "gsettings set org.cinnamon.desktop.background color-shading-type 'vertical'"
	#gsettings set org.cinnamon.desktop.background color-shading-type 'vertical'

	#echo "gsettings set org.cinnamon.desktop.background color-shading-type 'horizonta'"
	#gsettings set org.cinnamon.desktop.background color-shading-type 'horizontal'



	##
	## * https://github.com/morhetz/gruvbox
	##


	#echo "gsettings set org.cinnamon.desktop.background primary-color '#000000'"
	#gsettings set org.cinnamon.desktop.background primary-color '#000000'

	echo "gsettings set org.cinnamon.desktop.background primary-color '#3c3836'"
	gsettings set org.cinnamon.desktop.background primary-color '#3c3836'



	#echo "gsettings set org.cinnamon.desktop.background secondary-color '#928374'"
	#gsettings set org.cinnamon.desktop.background secondary-color '#928374'

	echo "gsettings set org.cinnamon.desktop.background secondary-color '#282828'"
	gsettings set org.cinnamon.desktop.background secondary-color '#282828'

	#echo "gsettings set org.cinnamon.desktop.background secondary-color '#000000'"
	#gsettings set org.cinnamon.desktop.background secondary-color '#000000'


}

##
### Tail: cinnamon / wallpaper / default
################################################################################
