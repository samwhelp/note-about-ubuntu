

################################################################################
### Head: Util / Command
##

sys_wallpaper_find_default_file_path () {


	if [ -f "$HOME/Pictures/Wallpaper/default.jpg" ]; then
		echo "$HOME/Pictures/Wallpaper/default.jpg"
		return 0
	fi

	if [ -f "/usr/share/backgrounds/forest.jpg" ]; then
		echo "/usr/share/backgrounds/forest.jpg"
		return 0
	fi

	if [ -f "/usr/share/backgrounds/keyboards.jpg" ]; then
		echo "/usr/share/backgrounds/keyboards.jpg"
		return 0
	fi

	if [ -f "/usr/share/backgrounds/xfce/palm-wave.jpg" ]; then
		echo "/usr/share/backgrounds/xfce/palm-wave.jpg"
		return 0
	fi

	if [ -f "/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg" ]; then
		echo "/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
		return 0
	fi

	if [ -f "/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg" ]; then
		echo "/usr/share/backgrounds/Manhattan_Sunset_by_Giacomo_Ferroni.jpg"
		return 0
	fi


	echo "/usr/share/backgrounds/default.jpg"
	return 0

}


sys_wallpaper_find_shuf_dir_path () {



	if [ -d "$HOME/Pictures/Wallpaper" ]; then
		echo "$HOME/Pictures/Wallpaper"
		return 0
	fi


	if [ -d "/usr/share/backgrounds" ]; then
		echo "/usr/share/backgrounds"
		return 0
	fi

	if [ -d "$HOME/Pictures/Wallpaper" ]; then
		echo "$HOME/Pictures"
		return 0
	fi

	echo "/usr/share/backgrounds"
	return 0

}


##
### Tail: Util / Command
################################################################################
