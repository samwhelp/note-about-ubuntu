

################################################################################
### Head: Util / Debug
##

util_debug_echo () {
	if is_debug; then
		echo "$@" 1>&2
	fi
}

util_error_echo () {
	echo "$@" 1>&2
}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Base
##

## THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"

find_dir_path () {
	if ! [ -d "$(dirname -- "$1")" ]; then
		dirname -- "$1"
		return 1
	fi
	echo "$(cd -- "$(dirname -- "$1")" ; pwd)"
}

## THIS_BASE_DIR_PATH="$(find_dir_path "$0")"

## $ export DEBUG_HELPER=true
is_debug () {
	if [ "$DEBUG_HELPER" = "true" ]; then
		return 0
	fi

	return 1
}

is_not_debug () {
	! is_debug
}

base_var_init () {


	THE_PLAN_DIR_PATH="$(find_dir_path "$THE_BASE_DIR_PATH/../../.")"


	THE_HELPER_DIR_NAME="helper"
	THE_HELPER_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_HELPER_DIR_NAME"

	THE_BIN_DIR_NAME="bin"
	THE_BIN_DIR_PATH="$THE_HELPER_DIR_PATH/$THE_BIN_DIR_NAME"

	THE_EXT_DIR_NAME="ext"
	THE_EXT_DIR_PATH="$THE_HELPER_DIR_PATH/$THE_EXT_DIR_NAME"

	THE_EXT_UTIL_DIR_NAME="util"
	THE_EXT_UTIL_DIR_PATH="$THE_EXT_DIR_PATH/$THE_EXT_UTIL_DIR_NAME"

	THE_MAK_DIR_NAME="mak"
	THE_MAK_DIR_PATH="$THE_HELPER_DIR_PATH/$THE_MAK_DIR_NAME"

	THE_SUB_DIR_NAME="sub"
	THE_SUB_DIR_PATH="$THE_HELPER_DIR_PATH/$THE_SUB_DIR_NAME"

	THE_SYS_DIR_NAME="sys"
	THE_SYS_DIR_PATH="$THE_HELPER_DIR_PATH/$THE_SYS_DIR_NAME"

	THE_SYS_EXT_DIR_NAME="$THE_EXT_DIR_NAME"
	THE_SYS_EXT_DIR_PATH="$THE_SYS_DIR_PATH/$THE_SYS_EXT_DIR_NAME"

	THE_SYS_EXT_UTIL_DIR_NAME="util"
	THE_SYS_EXT_UTIL_DIR_PATH="$THE_SYS_EXT_DIR_PATH/$THE_SYS_EXT_UTIL_DIR_NAME"

	THE_SYS_EXT_MOD_DIR_NAME="mod"
	THE_SYS_EXT_MOD_DIR_PATH="$THE_SYS_EXT_DIR_PATH/$THE_SYS_EXT_MOD_DIR_NAME"

	THE_SYS_SUB_DIR_NAME="$THE_SUB_DIR_NAME"
	THE_SYS_SUB_DIR_PATH="$THE_SYS_DIR_PATH/$THE_SYS_SUB_DIR_NAME"

	THE_SYS_PROFILE_DIR_NAME="profile"
	THE_SYS_PROFILE_DIR_PATH="$THE_SYS_DIR_PATH/$THE_SYS_PROFILE_DIR_NAME"

	THE_SYS_CACHE_DIR_NAME="cache"
	THE_SYS_CACHE_DIR_PATH="$THE_SYS_DIR_PATH/$THE_SYS_CACHE_DIR_NAME"

	THE_SYS_CACHE_PROFILE_DIR_NAME="$THE_SYS_PROFILE_DIR_NAME"
	THE_SYS_CACHE_PROFILE_DIR_PATH="$THE_SYS_CACHE_DIR_PATH/$THE_SYS_CACHE_PROFILE_DIR_NAME"

	THE_SHARE_DIR_NAME="share"
	THE_SHARE_DIR_PATH="$THE_HELPER_DIR_PATH/$THE_SHARE_DIR_NAME"




	THE_ASSET_DIR_NAME="asset"
	THE_ASSET_DIR_PATH="$THE_PLAN_DIR_PATH/$THE_ASSET_DIR_NAME"

	THE_OVERLAY_DIR_NAME="overlay"
	THE_OVERLAY_DIR_PATH="$THE_ASSET_DIR_PATH/$THE_OVERLAY_DIR_NAME"


	THE_PACKAGE_LIST_INSTALL_FILE_NAME="package-list-install.txt"
	THE_PACKAGE_LIST_REMOVE_FILE_NAME="package-list-remove.txt"


	THE_WALLPAPER_LIST_DOWNLOAD_FILE_NAME="wallpaper-list.txt"



}


base_var_dump () {

	is_not_debug && return 0

	util_debug_echo
	util_debug_echo "################################################################################"
	util_debug_echo "### Head: var_dump"
	util_debug_echo '##'
	util_debug_echo "#"
	util_debug_echo


	util_debug_echo "THE_PLAN_DIR_PATH=$THE_PLAN_DIR_PATH"



	util_debug_echo "THE_HELPER_DIR_NAME=$THE_HELPER_DIR_NAME"
	util_debug_echo "THE_HELPER_DIR_PATH=$THE_HELPER_DIR_PATH"

	util_debug_echo "THE_BIN_DIR_NAME=$THE_BIN_DIR_NAME"
	util_debug_echo "THE_BIN_DIR_PATH=$THE_BIN_DIR_PATH"

	util_debug_echo "THE_EXT_DIR_NAME=$THE_EXT_DIR_NAME"
	util_debug_echo "THE_EXT_DIR_PATH=$THE_EXT_DIR_PATH"

	util_debug_echo "THE_EXT_UTIL_DIR_NAME=$THE_EXT_UTIL_DIR_NAME"
	util_debug_echo "THE_EXT_UTIL_DIR_PATH=$THE_EXT_UTIL_DIR_PATH"

	util_debug_echo "THE_MAK_DIR_NAME=$THE_MAK_DIR_NAME"
	util_debug_echo "THE_MAK_DIR_PATH=$THE_MAK_DIR_PATH"

	util_debug_echo "THE_SUB_DIR_NAME=$THE_SUB_DIR_NAME"
	util_debug_echo "THE_SUB_DIR_PATH=$THE_SUB_DIR_PATH"

	util_debug_echo "THE_SYS_DIR_NAME=$THE_SYS_DIR_NAME"
	util_debug_echo "THE_SYS_DIR_PATH=$THE_SYS_DIR_PATH"

	util_debug_echo "THE_SYS_EXT_DIR_NAME=$THE_SYS_EXT_DIR_NAME"
	util_debug_echo "THE_SYS_EXT_DIR_PATH=$THE_SYS_EXT_DIR_PATH"


	util_debug_echo "THE_SYS_EXT_UTIL_DIR_NAME=$THE_SYS_EXT_UTIL_DIR_NAME"
	util_debug_echo "THE_SYS_EXT_UTIL_DIR_PATH=$THE_SYS_EXT_UTIL_DIR_PATH"


	util_debug_echo "THE_SYS_EXT_MOD_DIR_NAME=$THE_SYS_EXT_MOD_DIR_NAME"
	util_debug_echo "THE_SYS_EXT_MOD_DIR_PATH=$THE_SYS_EXT_MOD_DIR_PATH"


	util_debug_echo "THE_SYS_SUB_DIR_NAME=$THE_SYS_SUB_DIR_NAME"
	util_debug_echo "THE_SYS_SUB_DIR_PATH=$THE_SYS_SUB_DIR_PATH"



	util_debug_echo "THE_SYS_PROFILE_DIR_NAME=$THE_SYS_PROFILE_DIR_NAME"
	util_debug_echo "THE_SYS_PROFILE_DIR_PATH=$THE_SYS_PROFILE_DIR_PATH"

	util_debug_echo "THE_SYS_CACHE_DIR_NAME=$THE_SYS_CACHE_DIR_NAME"
	util_debug_echo "THE_SYS_CACHE_DIR_PATH=$THE_SYS_CACHE_DIR_PATH"

	util_debug_echo "THE_SYS_CACHE_PROFILE_DIR_NAME=$THE_SYS_CACHE_PROFILE_DIR_NAME"
	util_debug_echo "THE_SYS_CACHE_PROFILE_DIR_PATH=$THE_SYS_CACHE_PROFILE_DIR_PATH"

	util_debug_echo "THE_SHARE_DIR_NAME=$THE_SHARE_DIR_NAME"
	util_debug_echo "THE_SHARE_DIR_PATH=$THE_SHARE_DIR_PATH"





	util_debug_echo "THE_ASSET_DIR_NAME=$THE_ASSET_DIR_NAME"
	util_debug_echo "THE_ASSET_DIR_PATH=$THE_ASSET_DIR_PATH"

	util_debug_echo "THE_OVERLAY_DIR_NAME=$THE_OVERLAY_DIR_NAME"
	util_debug_echo "THE_OVERLAY_DIR_PATH=$THE_OVERLAY_DIR_PATH"


	util_debug_echo "THE_PACKAGE_LIST_INSTALL_FILE_NAME=$THE_PACKAGE_LIST_INSTALL_FILE_NAME"
	util_debug_echo "THE_PACKAGE_LIST_REMOVE_FILE_NAME=$THE_PACKAGE_LIST_REMOVE_FILE_NAME"


	util_debug_echo "THE_WALLPAPER_LIST_DOWNLOAD_FILE_NAME=$THE_WALLPAPER_LIST_DOWNLOAD_FILE_NAME"



	util_debug_echo
	util_debug_echo "#"
	util_debug_echo '##'
	util_debug_echo "### Tail: var_dump"
	util_debug_echo "################################################################################"
	util_debug_echo
}

##
### Tail: Base
################################################################################
