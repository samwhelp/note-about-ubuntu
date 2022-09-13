################################################################################
### Head: Mod / Wallpaper / Dwonload
##

mod_wallpaper_asset_install_wallpaper_download () {


	util_error_echo
	util_error_echo '## Wallpaper Download'
	util_error_echo

	##util_error_echo "${THE_SUB_WALLPAPER_WALLPAPER_LIST_DOWNLOAD_FILE_PATH}"

	util_error_echo "mkdir -p ${HOME}/Pictures/Wallpaper"
	mkdir -p "${HOME}/Pictures/Wallpaper"


	util_error_echo "cd ${HOME}/Pictures/Wallpaper"
	cd "${HOME}/Pictures/Wallpaper"


	sys_wallpaper_list_download "${THE_SUB_WALLPAPER_WALLPAPER_LIST_DOWNLOAD_FILE_PATH}"


	if ! [ -a "default.jpg" ]; then
		if [ -f "wallhaven-9m2y3x.jpg" ]; then
			util_error_echo "cp -f wallhaven-9m2y3x.jpg default.jpg"
			cp -f "wallhaven-9m2y3x.jpg" "default.jpg"
		fi
	fi

	mod_wallpaper_asset_install_wallpaper_download_each

	cd "${OLDPWD}"

	##
	## $ man cd | grep OLD
	##

}


mod_wallpaper_asset_install_wallpaper_download_each () {

	mod_wallpaper_asset_install_wallpaper_download_the_k_MglpZKg3s

	mod_wallpaper_asset_install_wallpaper_download_the_z-w-gu-bandageb5f

	mod_wallpaper_asset_install_wallpaper_download_the_Qu_Que_Ling

	mod_wallpaper_asset_install_wallpaper_download_the_Fareeha_Amari

}

mod_wallpaper_asset_install_wallpaper_download_the_k_MglpZKg3s () {

	##
	## * https://unsplash.com/@alken
	## * https://unsplash.com/photos/k_MglpZKg3s
	##

	## Original Size (6000x400)
	wget -c 'https://images.unsplash.com/photo-1581006198514-bf6def95c31e?ixlib=rb-1.2.1&dl=alfred-kenneally-k_MglpZKg3s-unsplash.jpg&q=80&fm=jpg&crop=entropy&cs=tinysrgb' -O 'alfred-kenneally-k_MglpZKg3s-unsplash.original.jpg'

	## Large (2400x1600)
	wget -c 'https://images.unsplash.com/photo-1581006198514-bf6def95c31e?ixlib=rb-1.2.1&dl=alfred-kenneally-k_MglpZKg3s-unsplash.jpg&w=2400&q=80&fm=jpg&crop=entropy&cs=tinysrgb' -O 'alfred-kenneally-k_MglpZKg3s-unsplash.large.jpg'

	## Medium (1920x1280)
	wget -c 'https://images.unsplash.com/photo-1581006198514-bf6def95c31e?ixlib=rb-1.2.1&dl=alfred-kenneally-k_MglpZKg3s-unsplash.jpg&w=1920&q=80&fm=jpg&crop=entropy&cs=tinysrgb' -O 'alfred-kenneally-k_MglpZKg3s-unsplash.medium.jpg'


}


mod_wallpaper_asset_install_wallpaper_download_the_z-w-gu-bandageb5f () {

	##
	## * https://guweiz.artstation.com/
	## * https://www.artstation.com/guweiz
	## * https://www.artstation.com/artwork/R33KGX
	##


	wget -c 'https://cdna.artstation.com/p/assets/images/images/028/138/058/large/z-w-gu-bandageb5f.jpg?1593594749&dl=1' -O 'z-w-gu-bandageb5f.jpg'


}

mod_wallpaper_asset_install_wallpaper_download_the_Fareeha_Amari () {


	##
	## Fareeha Amari (overwatch)
	## https://www.artstation.com/artwork/rge66

	wget -c 'https://cdna.artstation.com/p/assets/images/images/011/333/238/large/chen-wang-psb.jpg?1529049321&dl=1' -O 'fareeha-amari.jpg'


	##
	## * https://www.reddit.com/r/unixporn/comments/nvr4eo/awesomewm_new_80s_onedark_theme_new_awpanel_etc/
	## * https://hdqwalls.com/beautiful-biker-anime-girl-5k-wallpaper
	##
	wget -c 'https://images.hdqwalls.com/wallpapers/beautiful-biker-anime-girl-5k-3y.jpg'  -O 'fareeha-amari.5k-3y.jpg'
	wget -c 'https://images.hdqwalls.com/download/beautiful-biker-anime-girl-5k-3y-1366x768.jpg' -O 'fareeha-amari.5k-3y-1366x768.jpg'


	##
	## * https://anime.goodfon.com/art-anime/wallpaper-chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am.html
	##

	## Orginal Size
	## * https://anime.goodfon.com/download/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am/2100x1340/
	#wget -c 'https://anime.goodfon.com/download/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am/2100x1340/' -O 'fareeha-amari.2100x1340.jpg'
	#wget -c 'https://img5.goodfon.com/original/2100x1340/2/27/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am.jpg?d=1' -O 'fareeha-amari.2100x1340.jpg'

	## * https://anime.goodfon.com/download/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am/1366x768/
	#wget -c 'https://img5.goodfon.com/original/1366x768/2/27/chen-wang-by-chen-wang-pharah-farra-fareeha-amari-fareeha-am.jpg' -O 'fareeha-amari.1366x768.jpg'



}


mod_wallpaper_asset_install_wallpaper_download_the_Qu_Que_Ling () {

	##
	## 曲·雀翎 (Qu Que Ling)
	## * https://grayraven.tw/info/list_353_1.html
	##

	wget -c 'http://cdnimg01.yingxiong.com/M00/1A/10/ChpCl2CZD0SECU6sAAAAAIlzqu8408.jpg' -O 'Qu_Que_Ling.jpg'

}

##
### Tail: Mod / Wallpaper / Dwonload
################################################################################
