

################################################################################
### Head: Sys / Wallpaper Download
##

sys_wallpaper_list_download () {
	local wallpaper_list_file="$1"
	#sys_wallpaper_list_download_by_wget_args "${wallpaper_list_file}"
	sys_wallpaper_list_download_by_wget_list_file "${wallpaper_list_file}"
}

sys_wallpaper_list_download_by_wget_args () {
	local wallpaper_list_file="$1"
	local wallpaper_list="$(sys_wallpaper_list_find "$wallpaper_list_file")"

	util_error_echo "wget -c" ${wallpaper_list}
	wget -c ${wallpaper_list}
}


sys_wallpaper_list_download_by_wget_list_file () {
	local wallpaper_list_file="$1"
	local wallpaper_list="$(sys_wallpaper_list_find "$wallpaper_list_file")"

	local wallpaper_list_file_for_wget="${THE_DEFAULT_WALLPAPER_LIST_FILE_NAME}"

	util_error_echo "echo ${wallpaper_list} > ${wallpaper_list_file_for_wget}"
	echo "${wallpaper_list}" > "${wallpaper_list_file_for_wget}"

	util_error_echo "echo >> ${wallpaper_list_file_for_wget}"
	echo >> "${wallpaper_list_file_for_wget}"

	util_error_echo "wget -c -i ${wallpaper_list_file_for_wget}"
	wget -c -i "${wallpaper_list_file_for_wget}"
}



##
### Tail: Sys / Wallpaper Download
################################################################################
