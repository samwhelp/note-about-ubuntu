

################################################################################
### Head: Path / Init
##

##
## Key Path
##

THE_SUB_WALLPAPER_MODULE_NAME="wallpaper"

THE_SUB_WALLPAPER_BASE_DIR_NAME="${THE_SUB_WALLPAPER_MODULE_NAME}"
THE_SUB_WALLPAPER_BASE_DIR_PATH="${THE_SUB_DIR_PATH}/${THE_SUB_WALLPAPER_BASE_DIR_NAME}"

THE_SUB_WALLPAPER_EXT_DIR_PATH="${THE_SUB_WALLPAPER_BASE_DIR_PATH}/ext"
THE_SUB_WALLPAPER_BIN_DIR_PATH="${THE_SUB_WALLPAPER_BASE_DIR_PATH}/bin"

THE_SUB_WALLPAPER_PACKAGE_LIST_INSTALL_FILE_PATH="${THE_SUB_WALLPAPER_BASE_DIR_PATH}/share/${THE_SUB_WALLPAPER_BASE_DIR_NAME}/${THE_PACKAGE_LIST_INSTALL_FILE_NAME}"
THE_SUB_WALLPAPER_PACKAGE_LIST_REMOVE_FILE_PATH="${THE_SUB_WALLPAPER_BASE_DIR_PATH}/share/${THE_SUB_WALLPAPER_BASE_DIR_NAME}/${THE_PACKAGE_LIST_REMOVE_FILE_NAME}"


THE_SUB_WALLPAPER_WALLPAPER_LIST_DOWNLOAD_FILE_PATH="${THE_SUB_WALLPAPER_BASE_DIR_PATH}/share/${THE_SUB_WALLPAPER_BASE_DIR_NAME}/${THE_WALLPAPER_LIST_DOWNLOAD_FILE_NAME}"

##
### Tail: Path / Init
################################################################################


################################################################################
### Head: Func / Init
##

##
## Load Function
##

source "${THE_SUB_WALLPAPER_EXT_DIR_PATH}/${THE_SUB_WALLPAPER_MODULE_NAME}.sh"
source "${THE_SUB_WALLPAPER_EXT_DIR_PATH}/wallpaper-download.sh"


##
### Tail: Func / Init
################################################################################
