

################################################################################
### Head: Util / Wallpaper List
##


THE_DEFAULT_WALLPAPER_LIST_FILE_NAME="${THE_DEFAULT_WALLPAPER_LIST_FILE_NAME:-"wallpaper-list.txt"}"


util_wallpaper_list_file_path_find () {

	local list_file_path="$1"

	##
	## check argument
	##

	if [ -z "${list_file_path}" ]; then
		list_file_path="$THE_DEFAULT_WALLPAPER_LIST_FILE_NAME"
		echo "${list_file_path}"
	fi

	##
	## check file exist
	##

	if ! [ -f "${list_file_path}" ]; then
		list_file_path="$THE_DEFAULT_WALLPAPER_LIST_FILE_NAME"

	fi



	##
	## final check file exist
	##

	if ! [ -f "${list_file_path}" ]; then
		echo "wallpaper-list.txt"
	else
		echo "${list_file_path}"
	fi



}

##
### Tail: Util / Wallpaper List
################################################################################


################################################################################
### Head: Sys / Wallpaper List
##

sys_wallpaper_list_find () {
	local choose_file_path="$1"
	local list_file_path="$(util_wallpaper_list_file_path_find "${choose_file_path}")"
	util_list_file_load "${list_file_path}"
}

sys_wallpaper_list_find_raw () {
	local choose_file_path="$1"
	local list_file_path="$(util_wallpaper_list_file_path_find "${choose_file_path}")"
	cat "${list_file_path}"
}

##
### Tail: Sys / Wallpaper List
################################################################################
