

################################################################################
### Head: cinnamon
##
sys_cinnamon_config_install_cinnamon_theme_main () {

	echo
	echo "## Config: sys_cinnamon_config_install_cinnamon_theme_main"
	echo

	cinnamon_theme_main_config

	cinnamon_theme_have_icons_config

	echo
}

##
### Tail: cinnamon
################################################################################




################################################################################
### Head: cinnamon / theme / default
##

cinnamon_theme_main_config () {

	#cinnamon_theme_dracula
	cinnamon_theme_gruvbox


}

cinnamon_theme_fallback_config () {

	gsettings set org.cinnamon.desktop.wm.preferences theme-backup 'Adwaita'
	gsettings set org.cinnamon.desktop.interface gtk-theme-backup 'Adwaita'
	gsettings set org.cinnamon.desktop.interface icon-theme-backup 'gnome'

}

##
### Tail: cinnamon / theme / default
################################################################################




################################################################################
### Head: cinnamon / theme / gruvbox
##

cinnamon_theme_gruvbox () {

	gsettings set org.cinnamon.theme name 'Gruvbox'
	gsettings set org.cinnamon.desktop.wm.preferences theme 'Gruvbox'
	gsettings set org.cinnamon.desktop.interface gtk-theme 'Gruvbox'
	gsettings set org.cinnamon.desktop.interface icon-theme 'Gruvbox-Dark'
	gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze'
	gsettings set org.cinnamon.desktop.interface cursor-size 24

	cinnamon_theme_fallback_config
}

##
### Tail: cinnamon / theme / gruvbox
################################################################################



################################################################################
### Head: cinnamon / theme / dracula
##

cinnamon_theme_dracula () {

	gsettings set org.cinnamon.theme name 'Dracula'
	gsettings set org.cinnamon.desktop.wm.preferences theme 'Dracula'
	gsettings set org.cinnamon.desktop.interface gtk-theme 'Dracula'
	gsettings set org.cinnamon.desktop.interface icon-theme 'Dracula'
	gsettings set org.cinnamon.desktop.interface cursor-theme 'Breeze'
	gsettings set org.cinnamon.desktop.interface cursor-size 24

	cinnamon_theme_fallback_config
}

##
### Tail: cinnamon / theme / dracula
################################################################################



################################################################################
### Head: cinnamon / have_icons
##
cinnamon_theme_have_icons_config () {

	echo
	echo "## Config: cinnamon / have_icons"
	echo

	cinnamon_theme_have_icons_config_menus

	cinnamon_theme_have_icons_config_buttons

	echo
}

cinnamon_theme_have_icons_config_menus () {

	gsettings set org.cinnamon.settings-daemon.plugins.xsettings menus-have-icons true

	gsettings set org.cinnamon.desktop.interface menus-have-icons true

}


cinnamon_theme_have_icons_config_buttons () {

	gsettings set org.cinnamon.settings-daemon.plugins.xsettings buttons-have-icons true

	gsettings set org.cinnamon.desktop.interface buttons-have-icons true

}







##
### Tail: cinnamon / have_icons
################################################################################
